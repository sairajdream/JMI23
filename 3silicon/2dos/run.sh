#! /bin/bash
# Density of states (DOS) for Silicon

mpirun -np 2 pw.x < Si.scf.in > Si.scf.out
mpirun -np 2 pw.x < Si.nscf.in > Si.nscf.out
mpirun -np 2 dos.x <Si.dos.in > Si.dos.out

# To plot
gnuplot si_dos.gnu


# to open the dos.eps file
xdg-open si_dos.eps

