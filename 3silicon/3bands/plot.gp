set term postscript eps enhanced color
set output 'bands.eps'
Efermi=7.0781
#set xzeroaxis lt -1
set grid xtics lt -1 lw 1
set format y "%5.1f"
set format x ""
set ylabel "Energy (Ry)"
unset xlabel
plot 'si_bands.dat.all' u 1:($2-Efermi) notitle w linespoints lw 2 pt 6

