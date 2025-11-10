#! /usr/bin/env bash

$yay="$HOME/.local/share/athrail/yay"

if command -v yay >/dev/null 2>&1; then
  echo "INFO: yay is already available, exiting"
  exit
fi

sudo pacman -Sy --needed --noconfirm base-devel git

if [[ $? -ne 0 ]]; then
  echo "ERROR: error while installing dependencies, exiting"
  exit 1
fi

mkdir -p $HOME/.local/share/athrail/

if [[ -d "$yay" ]]; then
  rm -rI "$yay"
  if [[ $? -ne 0 ]]; then
    echo "ERROR: error while deleting yay repo, exiting"
    exit 1
  fi
fi

git clone https://aur.archlinux.org/yay.git "$yay"

if [[ $? -ne 0 ]]; then
  echo "ERROR: couldn't clone yay repo, exiting"
  exit 1
fi

pushd "$yay"
makepkg -si

if [[ $? -ne 0 ]]; then
  echo "ERROR: problem with installation of yay, inspect output for potential solution, exiting"
  exit 1
fi
