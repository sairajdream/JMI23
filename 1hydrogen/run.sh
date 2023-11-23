#!/bin/bash

mpirun -np 4 pw.x < 1hydrogen.scf.in > 1hydrogen.scf.out 
mpirun -np 4 pp.x < 2pp.hydrogen.psi2.in > 2pp.hydrogen.psi2.out 
cp ./reference/state.xcrysden .
bash 3plot-psi2.sh
