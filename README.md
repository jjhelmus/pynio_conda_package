Building a Linux conda package for PyNIO
=========================================

This repository contains tools for building an x86-64 Linux conda package for
PyNIO using a CentOS 5 Virtual machine creating and provisioned using vagrant.  

Certain files are stored in the vendor directory but not checked into the
repository.  There are as follows:

* [HDF-EOS2.19v1.00.tar](ftp://edhs1.gsfc.nasa.gov/edhs/hdfeos/latest_release/)
* [HDF-EOS5.1.15.tar](ftp://edhs1.gsfc.nasa.gov/edhs/hdfeos5/latest_release/)
* [Miniconda-latest-Linux-x86_64.sh](ftp://edhs1.gsfc.nasa.gov/edhs/hdfeos5/latest_release/)
* PyNIO-1.5.0-beta.tar.gz
 
To build use `vagrant up`.  This will create the VM and run the necessary
commands to build the PyNIO package.  To check this package open a shell to the
VM using `vagrant ssh`. Conda packages can be be transfered to the host machine
by copying them into the /vagrant directory.

The following commands may be helpful for testing this package.
* export PATH=/home/vagrant/miniconda/bin:$PATH
* conda install /home/vagrant/miniconda/conda-bld/linux-64/pynio-1.5.0b-np19py27_0.tar.bz2
* python -c "import Nio; print Nio.__formats__"
* ldd /home/vagrant/miniconda/lib/python2.7/site-packages/PyNIO/nio.so
