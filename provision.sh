#!/usr/bin/env bash

function install_pkg()
{
    (( $# > 1 )) || return 1 # Need args
    echo "Installing apt package $1"
    apt-get install -y $1 >/dev/null 2>&1
}

echo "Updating apt package list"
apt-get update >/dev/null 2>&1

install_pkg curl
install_pkg g++             # for gcc
install_pkg libc6-dev-i386  # for gcc
install_pkg zlib1g-dev      # for gcc

install_pkg texinfo         # for gdb
install_pkg libncurses5-dev # for gdb

install_pkg git

echo "Creating /products directory"
mkdir -p /products >/dev/null 2>&1
pushd /products

echo "Installing curl product"
curl --fail -O http://scisoft.fnal.gov/scisoft/packages/ups/v5_1_3/ups-5.1.3-Linux64bit+3.13-2.19.tar.bz2  >/dev/null 2>&1
tar xf ups-5.1.3-Linux64bit+3.13-2.19.tar.bz2

echo "Setting ownership of products"
chown -R vagrant:vagrant /products >/dev/null 2>&1

