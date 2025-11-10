#! /usr/bin/env bash

pushd "$(dirname "$(realpath ${BASH_SOURCE[0]})")"
. ./../utils.sh

install_package zoxide
install_package fastfetch
install_package eza
install_package fzf
install_package fd
install_package ripgrep
install_package bat
install_package lazygit
install_package lazydocker
install_package mise
install_package reflector
install_package ddcutil
install_package dust
install_package unzip
install_package git
install_package github-cli

install_package gvfs-mtp
install_package gvfs-smb
install_package gvfs-nfs

popd
