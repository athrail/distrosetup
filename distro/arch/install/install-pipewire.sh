#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package pipewire
install_package pipewire-alsa
install_package pipewire-jack
install_package pipewire-pulse
install_package wiremix
install_package wireplumber

popd
