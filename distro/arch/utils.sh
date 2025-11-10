#! /usr/bin/env bash

install_package() {
  local command="$1"
  local package_name="${2:-"$command"}"

  if command -v $command >/dev/null 2>&1; then
    echo "INFO: $package_name is already available, skipping"
  else
    sudo pacman -Sy --needed --noconfirm $package_name

    if [[ $? -ne 0 ]]; then
      echo "ERROR: error while installing $package_name"
      return 1
    fi

    echo "SUCCESS: $package_name was installed successfully"
  fi

  return 0
}

check_available() {
  local command="$1"

  if ! command -v $command >/dev/null 2>&1; then
    echo "ERROR: $command is unavailable"
    return 127
  fi

  return 0
}
