#!/usr/bin/env bash
set -x

# install gfortran
sudo yum install -y gcc-gfortran

# install tools required for building hdf4
sudo yum install -y gcc-c++
sudo yum install -y bison
sudo yum install -y flex
sudo yum install -y zlib-devel
sudo yum install -y libjpeg-devel

# install and update Miniconda
cp /vagrant/vendor/Miniconda-latest-Linux-x86_64.sh .
chmod +x Miniconda-latest-Linux-x86_64.sh
./Miniconda-latest-Linux-x86_64.sh -b
export PATH=/home/vagrant/miniconda/bin:$PATH
conda update --yes conda
conda install --yes conda-build jinja2

# build PyNIO conda package
cd /vagrant/recipes/
conda build pynio
