#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package php
install_package composer

install_package php-fpm
install_package php-gd
install_package php-pgsql
install_package php-redis
install_package php-sodium
install_package php-sqlite
install_package php-xsl

popd
