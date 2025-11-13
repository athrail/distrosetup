#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package bluez
install_package blueberry

sudo systemctl enable --now bluetooth.service

popd
