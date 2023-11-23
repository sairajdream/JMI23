#! /bin/bash
# SCF for Silicon

mpirun -np 2 pw.x < Si.scf.in > Si.scf.out
