#!/bin/bash

# Let test atest.example.sh function
#
# Usage:
# atest atest.example.sh
#
# Change TEST to cTEST to update test
# TEST: r1
# ./atest.example.sh           >  run.out.vtk
#
# TEST: r2
# ./atest.example.sh | awk '{print $1}' > run.out.vtk
#
# TEST: r3
# ./atest.example.sh | awk '{print $1*$2*$3}' > run.out.vtk
#
# TEST: r4
# ./atest.example.sh | awk '{print $1*$2*$3}' > run.out.vtk
#
# numeric test (tolerance 0.1 : abs(a-b) < 0.1 are the same)
# nTEST: r5
# echo 1 2 3 4 5 > run.out.vtk
#
# should fail
# nTEST: r6
# echo 1 2 3 4 5 > run.out.vtk

echo 1 2 3 4
