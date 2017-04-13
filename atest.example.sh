#!/bin/bash

# Let test atest.example.sh function
#
# Usage:
# ./atest.awk atest.example.sh
#
# Change TEST to cTEST to update test
# TEST: r1
# ./atest.example.sh           >  run.out.vtk
# awk '{print $1*$2*$3}' run.out.vtk >  run.hash.txt
#
# TEST: r2
# ./atest.example.sh | awk '{print $1}' > run.out.vtk
#
# TEST: r3
# ./atest.example.sh | awk '{print $1*$2*$3}' > run.out.vtk
#
# TEST: r4
# ./atest.example.sh | awk '{print $1*$2*$3}' > run.out.vtk

echo 1 2 3 4 5
