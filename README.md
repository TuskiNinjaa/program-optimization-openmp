# program-paralelization-openmp
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
./esparso_seq.o n=          20: tempo= 0.000000 + 0.000000 = 0.000000 s
./esparso_par.o n=          20: tempo= 0.000204 + 0.000002 = 0.000206 s
./esparso_seq.o n=         100: tempo= 0.000000 + 0.000000 = 0.000001 s
./esparso_par.o n=         100: tempo= 0.000518 + 0.000002 = 0.000520 s
./esparso_seq.o n=     1000000: tempo= 0.001462 + 0.001431 = 0.002893 s
./esparso_par.o n=     1000000: tempo= 0.000451 + 0.000154 = 0.000605 s
./esparso_seq.o n=    10000000: tempo= 0.013003 + 0.013211 = 0.026214 s
./esparso_par.o n=    10000000: tempo= 0.001358 + 0.001875 = 0.003233 s
./esparso_seq.o n=   100000000: tempo= 0.123426 + 0.132172 = 0.255598 s
./esparso_par.o n=   100000000: tempo= 0.012012 + 0.015006 = 0.027018 s
Test case 1: Files are EQUAL
Test case 2: Files are EQUAL
Test case 3: Files are EQUAL
Test case 4: Files are EQUAL
Test case 5: Files are EQUAL
```
