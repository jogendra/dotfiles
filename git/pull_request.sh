#!/bin/bash

# Script to open pull request directly into your default browser.
# It is very useful when diff between default branch on GitHub
# and development purpose branch is too high.

function _zpr() {
    current_branch=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)
    parent_branch_with_remote=$(git rev-parse --abbrev-ref --symbolic-full-name @{u})
    parent_branch="${parent_branch_with_remote##*/}"
    github_username=$(git config user.name)
    remote_url=$(git ls-remote --get-url)
    base_url=$(dirname "$remote_url")
    repo_name=$(basename -s .git "$remote_url")
    full_url="$base_url/$repo_name"
    zprURL="$full_url/compare/$parent_branch...$github_username:$current_branch?expand=1"
    open $zprURL
}
_zpr
