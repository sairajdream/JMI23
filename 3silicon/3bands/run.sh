#! /bin/bash

mpirun -np 2 pw.x < Si.scf.in > Si.scf.out
mpirun -np 2 pw.x < Si.nscf.in > Si.nscf.out
mpirun -np 2 bands.x <Si.bands.in > Si.bands.out
plotband.x <Si.plotband

bash sumplot.sh

# to plot
gnuplot plot.gp


# to open bands.eps file
xdg-open bands.eps

