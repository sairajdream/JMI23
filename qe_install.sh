#!/bin/bash

#------------------------------------------------------------------------------
# Copyright 2023 Sai Raj Ali
# This script is licensed under the MIT License. 
# Download the LICENSE file from http://tiny.cc/sai_MIT_LIC
# Contact: sairajdream@gmail.com |https://sairajdream.github.io/
#------------------------------------------------------------------------------


# Step-0:  Manual Work
#---------------------------------------------------------------------------------------------
# To make this script useful for future updates I am going to create two variables 
# In the 1st variable "QElink" I will paste the download link of latest QE.
# In the 2nd variable "VER" will enter the version name.  

#--------------------------------------------------------
# Note: Please update the folloiwng variables if updates are available


QElink="https://www.quantum-espresso.org/rdm-download/488/v7-2/94472537072b2ef6f9b0da3e841fd7a2/qe-7.2-ReleasePack.tar.gz"
VER="qe7.2"      


#---------------------------------------------------------------------------------------------
#NOTE : No need to modify anything below

IDIR="$HOME/espresso"      # Path of the installation directory

# Step-1: Installation of QE Pre-requisite
#---------------------------------------------------------------------------------------------
#1: Prerequsite for Quantum Espresso
sudo apt-get update
sudo apt-get install -y gcc gfortran
sudo apt-get install -y build-essential 
sudo apt-get install -y libfftw3-dev
sudo apt-get install -y libblas3 
sudo apt-get install -y libblas-dev
sudo apt-get install -y liblapack-dev
sudo apt-get install -y libopenmpi-dev

#2 Installation of stable openmpi from apt package
sudo apt-get install -y openmpi-bin

#3 Installation of Latest-ver
mkdir $IDIR
wget -O $IDIR/QE.tar.gz $QElink
tar -xvzf $IDIR/QE.tar.gz -C $IDIR/ 
mv $IDIR/qe* $IDIR/$VER
cd $IDIR/$VER
./configure --enable-parallel=yes 
make -j 4 all      # I have only 4 cores. you can change accordingly

# Insert QE path to .bashrc file
echo "export PATH=\$PATH:$IDIR/$VER/bin" >> ~/.bashrc

exec $BASH
