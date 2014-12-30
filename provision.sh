#!/usr/bin/env bash

apt-get update >/dev/null 2>&1
apt-get install -y curl
apt-get install -y g++
apt-get install -y libc6-dev-i386

mkdir -p /products
pushd /products
curl --fail -O \
     http://scisoft.fnal.gov/scisoft/packages/ups/v5_1_2/ups-5.1.2-Linux64bit%2B3.2-2.15.tar.bz2
tar xf ups-5.1.2-Linux64bit%2B3.2-2.15.tar.bz2

chown -R vagrant:vagrant /products
