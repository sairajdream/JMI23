#!/bin/bash

pw.x < 1pw.benzene.scf.in > 1pw.benzene.scf.out
pp.x < 2pp.benzene.psi2.in > 2pp.benzene.psi2.out
cp ./reference/MO-state.xcrysden .
bash 3plot-psi2.sh
