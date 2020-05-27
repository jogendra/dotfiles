#!/bin/bash

# Script to force update a branch with upstream branch

BRANCH_NAME=$1
function sync_with_upstream() {
    git checkout $BRANCH_NAME
    git fetch upstream
    git reset --hard upstream/$BRANCH_NAME
    git push -f origin $BRANCH_NAME
}
sync_with_upstream