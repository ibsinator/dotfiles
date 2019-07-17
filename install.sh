#!/bin/bash --

# Script for automatic deploy of dotfiles.

# When type holds a value, simple versions will be set.
TYPE=${1}

# Exclude git and installation files.
EXCLUDE="--exclude .git \
         --exclude .gitignore \
         --exclude *.md \
         --exclude install"

# Omit simple versions if not set.
if [[ -z ${TYPE} ]]; then
    EXCLUDE="${EXCLUDE} \
             --exclude simple_versions"
fi

# Some excludes are OS specific.
if [[ $(uname) == "Darwin" ]];then
    EXCLUDE="${EXCLUDE} \
             --exclude *linux"
else
    EXCLUDE="${EXCLUDE} \
             --exclude .bash_profile \
             --exclude .iterm2* \
             --exclude *mac"
fi

# Copy dotfiles to the home directory (~).
if [[ -z ${TYPE} ]]; then
    echo "Copying dotfiles to home directory."
    rsync -a ${EXCLUDE} ../ ~/
else
    echo "Copying simple version of dotfiles to home directory."
    rsync -a ${EXCLUDE} ../simple_versions ~/
fi
