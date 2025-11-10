#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package otf-font-awesome
install_package ttf-jetbrains-mono-nerd
install_package ttf-fira-sans

popd
