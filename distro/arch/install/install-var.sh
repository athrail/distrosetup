#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package gnome-calculator
install_package mpv
install_package libreoffice-fresh
install_package nautilus
install_package pinta

install_package plymouth
install_package polkit-gnome
install_package wl-clipboard

popd
