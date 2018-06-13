# A framework for regression testing

## Tutorial

Let create a test for `atest.example.sh`

	./atest.example.sh

it outputs

	 1 2 3 4 5

and you want to modify `atest.example.sh` and make sure the output is
the same after modifications.

Create a file `test/0`

	# cTEST: 0
	./atest.example.sh  > example.out.txt

Run `atest test/0` end of the output says:

	atest: 0/0 test(s) passed
	atest:    1 test(s) created

Replace `cTEST` by ``TEST` in `test/0` and run `atest test/0`. It returns:

	atest: RUNNING: 0
	atest: PASSED : 0
	atest: 1/1 test(s) passed

Now if you "break" `atest.example.sh` and run `atest test/0` it returns

    atest: 0/1 test(s) passed
    atest: failed tests:
    atest:     0
	
Internally `atest` runs everything after `# TEST:` as a script. And
stores output to a directory `test_data`. How does it know what is an
output? It looks for a magic pattern `.out.` and consider a file which
contains an output.

## Tools
* [atest](atest) - see [atest.example.sh](atest.example.sh)
* [ucmp](ucmp) - `cmp` for numbers
* [udiff](udiff) - `diff` for numbers
* [uscale](uscale) - scale all numbers

## Installation

	make install BIN=<bin drectory>
