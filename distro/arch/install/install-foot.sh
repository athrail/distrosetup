#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package foot

if [[ $? -e 0 ]]; then
  systemctl --user enable --now foot-server.service
fi

popd
