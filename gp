#!/bin/bash
#
# Git Pull

function git_pull() {
    cd $1
    if [ -e $1/.git ]; then
        git pull
    fi
}

for repo in "$@"; do
    if [ -e ${repo} ]; then
        git_pull ${repo}
    fi
done


