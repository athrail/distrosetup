#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package xdg-desktop-portal
install_package xdg-user-dirs
install_package xdg-utils
install_package xdg-terminal-exec

popd

xdg-user-dirs-update
