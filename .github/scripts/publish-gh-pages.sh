#!/usr/bin/env bash
# Usage: publish-gh-pages.sh <.|pr/N> [src]   (no src: delete)
# Rewrites gh-pages as a single commit; lease + retries handle concurrent runs.
set -euo pipefail

dest=${1:?usage: publish-gh-pages.sh <dest> [src]}
src=${2:-}
branch=gh-pages
remote=${PAGES_REMOTE:-"https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"}

if [ "$dest" = "." ]; then
  [ -n "$src" ] || { echo "The main site needs a src folder" >&2; exit 1; }
elif ! [[ "$dest" =~ ^pr/[0-9]+$ ]]; then
  echo "Unsupported dest: $dest" >&2
  exit 1
fi
if [ -n "$src" ]; then
  src=$(cd "$src" && pwd)
fi
if [ "$dest" = "." ] && [ -e "$src/pr" ]; then
  echo "The site has its own top-level 'pr' path, which clashes with previews" >&2
  exit 1
fi

publish() {
  local work lease
  work=$(mktemp -d)

  lease=$(git ls-remote --heads "$remote" "$branch" | cut -f1)
  if [ -n "$lease" ]; then
    git clone --quiet --depth 1 --branch "$branch" "$remote" "$work"
  else
    git init --quiet "$work"
    git -C "$work" remote add origin "$remote"
  fi
  cd "$work"

  if [ "$dest" = "." ]; then
    find . -mindepth 1 -maxdepth 1 ! -name .git ! -name pr -exec rm -rf {} +
    cp -R "$src"/. .
  else
    if [ -z "$src" ] && [ ! -e "$dest" ]; then
      echo "Nothing to remove at $dest"
      return 10
    fi
    rm -rf "$dest"
    if [ -n "$src" ]; then
      mkdir -p "$dest"
      cp -R "$src"/. "$dest"
      find "$dest" -name .git -prune -exec rm -rf {} +
    fi
  fi
  touch .nojekyll

  git checkout --quiet --orphan publish
  git add -A
  git -c user.name="github-actions[bot]" \
      -c user.email="41898282+github-actions[bot]@users.noreply.github.com" \
      commit --quiet -m "Publish ${dest}"
  git push --quiet --force-with-lease="${branch}:${lease}" origin "publish:${branch}"
}

for attempt in $(seq 1 10); do
  # set -e is ignored inside "if"
  set +e
  (set -e; publish)
  rc=$?
  set -e
  if [ "$rc" -eq 0 ]; then
    echo "Published ${dest} to ${branch}"
    exit 0
  fi
  if [ "$rc" -eq 10 ]; then
    exit 0
  fi
  echo "Publish failed (attempt ${attempt}). Retrying..." >&2
  sleep $((attempt + RANDOM % 5))
done
echo "Could not publish ${dest}" >&2
exit 1
