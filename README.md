<h2>Introduction</h2>

A framework for regression testing.

<h2>Tools</h2>

<a href="ates">atest</a> - see [atest.example.sh](atest.example.sh)</br>
<a href="ucmp">ucmp</a> - <tt>cmp(1)</tt> for numbers</br>
<a href="udiff">udiff</a> - <tt>diff(1)</tt> for numbers</br>
<a href="uscale">uscale</a> - scale all numbers</br>

<h2>Installation</h2>

<pre>
make PREFIX=&lt;prefix directory&gt;
</pre>
	
scripts are installed to <tt>$PREFIX/bin</tt> and man pages are to
<tt>$PREFIX/man</tt>.

<h2>Documentation</h2>

<!--- MANWIDTH=75 man ./atest.1 | sed 's,<,\&lt;,g; s,>,\&gt;,g' --->
<pre>
ATEST(1)                 General Commands Manual                 ATEST(1)

NAME
       atest - run atests

SYNOPSIS
       atest [ file ...  ]

TUTORIAL
       Lets  create a test for a program `./example'.  it outputs `1 2 3'
       and you want to modify `./example' and make sure the  output  stay
       the same. Create a file with a test `test/0'

              # cTEST: 0
              ./example  &gt; example.out.txt

       The  lines after `# cTEST: 0' are executed as a script. The script
       creates a file example.out.txt which contains  a  "magic"  pattern
       `.out.'.  This pattern tells atest to consider this file as a ref‐
       erence output.

              $ atest test/0

       end of the output says:

              atest: 0/0 test(s) passed
              atest:    1 test(s) created

       atest stored a reference output to the directory  `test_data'.  To
       run a test replace `cTEST' by `TEST' in `test/0' and execute

              $ atest test/0

       It returns

              atest: RUNNING: 0
              atest: PASSED : 0
              atest: 1/1 test(s) passed

       Now if you "break" `./example' and run

              atest test/0

       it get noticed.

              atest: 0/1 test(s) passed
              atest: failed tests:
              atest:     0

DESCRIPTION
       A test consists of a header line and lines which are executed as a
       shell script. An empty line ends a script.

              # TEST: name
              &lt;script&gt;
              &lt;scirpt&gt;
              &lt;script&gt;

              &lt;not a script&gt;

       cTEST means "create" mode. In this mode  the  script  updates  the
       reference file.

              # cTEST: name

       nTEST is "numerical" comparison mode. In this mode every number in
       the output is compared with the reference up to a  tolerance  0.1.
       For a reference output `1 2 3'. A program which outputs `1.01 2 3'
       passes a test and one which outputs `1.11 2 3' does not.

ENVIRONMENT VARIABLES
       The following environment variables affect `atest'.   ATEST_DIR  a
       directory  with  the reference values, if ATEST_C is set re-create
       all then test.

EXAMPLES
              atest atest.examples.sh

       Run tests in atest.examples.sh

SOURCE
       https://github.com/slitvinov/atest

                                                                 ATEST(1)
</pre>
