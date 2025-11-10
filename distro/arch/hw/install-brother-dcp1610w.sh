#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./utils.sh

check_available yay

if [[ $? -ne 0 ]]; then
  echo "ERROR: Install yay first before installing printer"
  exit 1
fi

yay -Syy --needed --noconfirm brother-dcp1610w

install_package cups
install_package cups-browsed
install_package cups-filters
install_package cups-pdf
install_package ghostscript
install_package system-config-printer

popd
