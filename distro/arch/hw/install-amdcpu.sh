#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package amd-ucode

popd
