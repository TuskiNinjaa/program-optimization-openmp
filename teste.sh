#!/bin/bash

gcc esparso_seq.c -fopenmp -o esparso_seq -Wall

./esparso_seq ./Entradas/e1.txt ./Saidas/par_s1.txt
./esparso_seq ./Entradas/e2.txt ./Saidas/par_s2.txt
./esparso_seq ./Entradas/e3.txt ./Saidas/par_s3.txt
./esparso_seq ./Entradas/e4.txt ./Saidas/par_s4.txt
./esparso_seq ./Entradas/e5.txt ./Saidas/par_s5.txt