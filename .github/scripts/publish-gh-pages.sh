#!/usr/bin/env bash
# Publish a built site into the gh-pages branch, which GitHub Pages serves.
#
# Usage: publish-gh-pages.sh <dest> [src]
#   dest  "." for the main site, or a sub-folder such as "pr-preview/pr-12".
#   src   Folder with the built site. Omit it to delete <dest>.
#
# Publishing to "." replaces the main site and keeps "pr-preview/".
# The branch is always rewritten as a single commit, so old builds do not pile
# up in the repo history. --force-with-lease plus a retry loop makes concurrent
# publishers (main deploy, previews, cleanups) safe: a push only lands if
# nobody else pushed since we cloned.
#
# Env: GITHUB_TOKEN and GITHUB_REPOSITORY (set by Actions), or PAGES_REMOTE to
# point at another remote (used for local testing).
set -euo pipefail

dest=${1:?usage: publish-gh-pages.sh <dest> [src]}
src=${2:-}
branch=gh-pages
remote=${PAGES_REMOTE:-"https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"}

case "$dest" in
  .) [ -n "$src" ] || { echo "The main site needs a src folder" >&2; exit 1; } ;;
  pr-preview/pr-[0-9]*) ;;
  *) echo "Unsupported dest: $dest" >&2; exit 1 ;;
esac
if [ -n "$src" ]; then
  src=$(cd "$src" && pwd)
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
    find . -mindepth 1 -maxdepth 1 ! -name .git ! -name pr-preview -exec rm -rf {} +
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
      # Never let a build smuggle in a nested git repo.
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
  # Not "if publish": bash turns off set -e inside an if condition.
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
