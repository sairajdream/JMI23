# To calculate the ground state energy of the hydrogen atom

	mpirun -np 4 pw.x < 1hydrogen.scf.in > 1hydrogen.scf.out

# To plot shape of molecular orbital of hydrogen atom

	mpirun -np 4 pp.x < 2pp.hydrogen.psi2.in > 2pp.hydrogen.psi2.out


# Plot one of generated XSF files with xcrysden and
# save the orbital as state.xcrysden

	xcrysden --xsf psi2.benzene_K001_B006.xsf

# To plot all the atomic orbital 

	bash 3plot-psi2.sh
