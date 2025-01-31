#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finish
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

./receipts/osx.sh
./receipts/brew.sh
./receipts/mas.sh
./receipts/zsh.sh
./receipts/copy.sh

# FIXME: https://github.com/lra/mackup/issues/1253
export XDG_CONFIG_HOME=/Users/ivan/
