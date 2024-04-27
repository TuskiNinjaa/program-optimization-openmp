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
