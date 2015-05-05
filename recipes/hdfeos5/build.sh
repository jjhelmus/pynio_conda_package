#!/bin/bash

export CFLAGS="-m64 -pipe -O2 -march=x86-64 -fPIC"
export CXXFLAGS="${CFLAGS}"

./configure --prefix=$PREFIX \
    --with-hdf5=$PREFIX \
    --enable-install-include 
make
make install
