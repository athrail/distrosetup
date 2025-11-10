#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./utils.sh

install_package uwsm
install_package hyprland
install_package hypridle
install_package hyprland-guiutils
install_package hyprpaper
install_package hyprlock
install_package xdg-desktop-portal-hyprland

popd
