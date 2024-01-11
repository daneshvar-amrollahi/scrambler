#!/bin/bash

directory="benchmarks"
for file in $(find $directory -name "*.smt2"); do
    fullpath=$(realpath $file)
    filename=$(basename $fullpath)
    echo "Scrambling" $filename "..."

    output="scrambled-benchmarks/""${filename::-5}_scram.smt2"

    ./scrambler -seed $1 < $file > $output

    echo "Scrambled file saved to " $output
    echo "********************************************"
    # ./scrambler $file > scrambled-benchmarks/"scram{$file}"
done
