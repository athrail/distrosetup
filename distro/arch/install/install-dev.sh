#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package cmake
install_package gcc
install_package clang
install_package bear
install_package ccache

install_package typst

popd
