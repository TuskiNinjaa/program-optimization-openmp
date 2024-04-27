# program-optimization-openmp
The objective of this work is to use the OpenMP library to parallelize a sequential algorithm and verify the time savings when executing both codes on the same machine.

# Enviroment
- GCC - Version 13.2.0
- UnZip - Version 6.00

# Unzip inputs and outputs files
```console
unzip Entradas.zip
```
```console
unzip Saidas.zip
```

# Compiling codes
```console
gcc esparso_seq.c -fopenmp -o esparso_seq.o -Wall
```
```console
gcc esparso_par.c -fopenmp -o esparso_par.o -Wall
```

# Running the first testcase
```console
./esparso_seq.o ./Entradas/e1.txt ./Saidas/par_s1.txt
```
```console
./esparso_par.o ./Entradas/e1.txt ./Saidas/par_s1.txt
```

# Test script
```console
chmod +x teste.sh
```

```console
./teste.sh
```
## Example of output after running the test script
```console
./esparso_seq.o n=          20: tempo= 0.000000 + 0.000000 = 0.000001 s
./esparso_par.o n=          20: tempo= 0.000250 + 0.000002 = 0.000252 s
./esparso_seq.o n=         100: tempo= 0.000000 + 0.000000 = 0.000000 s
./esparso_par.o n=         100: tempo= 0.000198 + 0.000002 = 0.000200 s
./esparso_seq.o n=     1000000: tempo= 0.001202 + 0.001430 = 0.002632 s
./esparso_par.o n=     1000000: tempo= 0.000663 + 0.000132 = 0.000796 s
./esparso_seq.o n=    10000000: tempo= 0.012307 + 0.014931 = 0.027238 s
./esparso_par.o n=    10000000: tempo= 0.004557 + 0.001312 = 0.005869 s
./esparso_seq.o n=   100000000: tempo= 0.118854 + 0.143244 = 0.262098 s
./esparso_par.o n=   100000000: tempo= 0.037863 + 0.013575 = 0.051439 s
Test case 1: Files are EQUAL
Test case 2: Files are EQUAL
Test case 3: Files are EQUAL
Test case 4: Files are EQUAL
Test case 5: Files are EQUAL
```
