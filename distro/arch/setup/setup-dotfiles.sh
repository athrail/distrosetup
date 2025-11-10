#! /usr/bin/env bash

$dotfiles="$HOME/.dotfiles"

if [[ -d "$dotfiles" ]]; then
  echo "INFO: dotfiles repo already cloned, exiting"
  exit 0
fi

git clone https://github.com/athrail/dotfiles "$dotfiles"

if [[ $? -ne 0 ]]; then
  echo "ERROR: couldn't clone dotfiles repo, exiting"
  exit 1
fi

echo "SUCCESS: dotfiles cloned, go to $dotfiles and stow what's needed"
