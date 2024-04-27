#!/bin/bash

gcc esparso_seq.c -fopenmp -o esparso_seq.o -Wall
gcc esparso_par.c -fopenmp -o esparso_par.o -Wall

for i in {1..5}
do
    ./esparso_seq.o ./Entradas/e$i.txt ./Saidas/s$i.txt
    ./esparso_par.o ./Entradas/e$i.txt ./Saidas/par_s$i.txt
done

for i in {1..5}
do
    cmp --silent ./Saidas/par_s$i.txt ./Saidas/s$i.txt && echo "Test case $i: Files are EQUAL" || echo "Test case $i: Files are DIFFERENT"
done