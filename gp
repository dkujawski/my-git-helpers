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
    for rp in ${REPOPATHS//:/}; do
        if [ -e ${rp}/${repo} ]; then
            git_pull ${rp}/${repo}
        fi
    done
done


