#!/bin/bash

# this bash run a series Ising simulation in different tenperature
# it covers b=0~1, where phase transition occurs around about b=0.44

b0=0.01  # beta = 1/kT
b=0.01
J=1
h=0
echo H C M X > ${1}.csv
for(( i=1;i<=100;i++ ))
do
    b=`echo "${b0} * $i"| bc -l`
    ./ising.run ${b} ${J} ${h} >> ${1}.csv
    echo "$i / 100"
done

python3 plt2.py ${1}.csv ${b0}
