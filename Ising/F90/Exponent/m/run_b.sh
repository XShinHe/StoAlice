#!/bin/bash

# this bash run a series Ising simulation in different tenperature
# it covers b=0~1, where phase transition occurs around about b=0.44

J=1
h=0
echo H C M X > ${1}.csv
for b in  0.44 \
0.442 0.444 0.446 0.448 0.45 \
0.452 0.454 0.456 0.458 0.46 \
0.462 0.464 0.466 0.468 0.47 \
0.472 0.474 0.476 0.478 0.48
do
    #b=`echo "${b0} * $i"| bc -l`
    ./ising.run ${b} ${J} ${h} >> ${1}.csv
    echo ${b}
done

