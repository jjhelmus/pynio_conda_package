#!/bin/bash

make || return 1;
cp grib2.h ${PREFIX}/include
cp libgrib2c.a ${PREFIX}/lib

