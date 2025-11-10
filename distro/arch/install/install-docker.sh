#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package docker
install_package docker-buildx
install_package docker-compose

popd
