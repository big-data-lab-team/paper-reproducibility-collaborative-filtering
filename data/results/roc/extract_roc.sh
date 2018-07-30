#!/usr/bin/env bash

set -e
set -u

for i in RandomUnreal RFNT-L RFNT-S RFNU rows columns RS
do
    \rm -f roc_$i.csv
    for file in ../means_of_results/ALS/FS-100files/ALS-*-$i-average.txt
    do
        echo -n $i" "$file" " >> roc_$i.csv
        awk -F ';' '$1==0.9 {print $2" "$4" "$5}' $file >> roc_$i.csv
    done
    for file in ../means_of_results/ALS/Synthetic/synthetic_subject_types/ALS-*-$i-average.txt
    do
        echo -n $i" "$file" " >> roc_$i.csv
        awk -F ';' '$1==0.9 {print $2" "$4" "$5}' $file >> roc_$i.csv
    done
done
