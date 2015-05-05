#!/bin/bash

mkdir -vp ${PREFIX}/bin;

export CFLAGS="-m64 -pipe -O2 -march=x86-64 -fPIC"
export CXXLAGS="${CFLAGS}"

chmod +x configure;

./configure \
    --disable-encoding \
    --prefix=${PREFIX} || return 1;
make || return 1;
make install || return 1;
