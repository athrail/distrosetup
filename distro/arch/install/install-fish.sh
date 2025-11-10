#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package fish

echo "INFO: setting fish as default shell"
chsh -s /usr/bin/fish

popd
