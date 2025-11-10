#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./utils.sh

install_package lib32-vulkan-radeon
install_package vulkan-radeon
install_package linux-firmware-amdgpu
install_package mesa

popd
