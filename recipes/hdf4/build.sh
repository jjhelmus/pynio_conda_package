#!/bin/bash

mkdir -vp ${PREFIX}/bin;

export CFLAGS="-m64 -pipe -O2 -march=x86-64 -fPIC"
export CXXFLAGS="${CFLAGS}"

chmod +x configure;

./configure \
    --with-zlib \
    --with-jpeg \
    --disable-netcdf \
    --prefix ${PREFIX} || return 1;
make || return 1;
make install || return 1;

rm -rf ${PREFIX}/share/hdf4_examples;
