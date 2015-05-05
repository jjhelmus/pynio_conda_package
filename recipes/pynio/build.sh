#!/bin/bash

cp -r $RECIPE_DIR/.. .
export HAS_NETCDF4=1
export NETCDF4_PREFIX=$PREFIX

export HAS_NETCDF4=1
export HAS_HDF5=1

export HAS_HDF4=1

export HAS_GDAL=1

export HAS_HDFEOS=1

export HAS_HDFEOS5=0
export HAS_GRIB2=0

$PYTHON setup.py install
