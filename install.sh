#!/bin/bash --

# Script for automatic deploy of dotfiles.

SCRIPT_NAME=${0: +2}
TYPE=${1}

# Exclude git and installation files.
EXCLUDE="--exclude .git \
         --exclude .gitignore \
         --exclude *.md \
         --exclude ${SCRIPT_NAME}"

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
    rsync -a ${EXCLUDE} . ~/
else
    echo "Copying simple version of dotfiles to home directory."
    rsync -a ${EXCLUDE} simple_versions ~/
fi

if [[ ! -f ~/.color_picker.d/color_mode ]]; then
    echo "Setting color mode light for terminal"
    cmode light
fi

# Copy settings for Gnome Terminal, if present.
if [[ $(uname) == 'Linux' ]] &&  dpkg -l | grep " gnome-terminal " > /dev/null; then
    echo "Setting custom profiles for Gnome Terminal."
    cp .config/EyeCandy.conf ~/.config/
    dconf reset -f /org/gnome/terminal/
    dconf load /org/gnome/terminal/legacy/profiles:/ < ~/.config/EyeCandy.conf
fi
