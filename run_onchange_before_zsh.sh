#!/usr/bin/env bash

set -eufo pipefail

printf "$(tput bold)$(tput setaf 3)%s%s$(tput blink)%s$(tput sgr0)" "➜ " "$(basename ${0} | awk -F. '{print $2"."$3}')" "... "

sudo apt install -y zsh >/dev/null 2>&1
sudo chsh -s /usr/bin/zsh $USER >/dev/null 2>&1

printf "\r$(tput bold)$(tput setaf 2)%s%s%s$(tput sgr0)\n" "✓ " "$(basename ${0} | awk -F. '{print $2"."$3}')" "... done"
