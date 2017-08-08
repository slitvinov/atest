# TEST: c1
./atest.example.sh | awk '{print $1}' > run.out.vtk

# TEST: c2
./atest.example.sh | awk '{print $1*$2*$3}' > run.out.vtk
