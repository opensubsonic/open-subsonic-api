#!/usr/bin/env bash
# Usage: pr-comment.sh <pr> <body>   (upserts the bot comment)
set -euo pipefail

pr=${1:?pr number}
marker="<!-- pr-preview -->"
body="${marker}
${2:?body}"

id=$(gh api --paginate "repos/${GITHUB_REPOSITORY}/issues/${pr}/comments" \
  --jq ".[] | select(.user.login == \"github-actions[bot]\" and (.body | startswith(\"${marker}\"))) | .id" | head -1)

if [ -n "$id" ]; then
  gh api --silent -X PATCH "repos/${GITHUB_REPOSITORY}/issues/comments/${id}" -f body="$body"
else
  gh api --silent "repos/${GITHUB_REPOSITORY}/issues/${pr}/comments" -f body="$body"
fi
