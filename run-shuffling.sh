#!/bin/bash

BENCHMARK_DIRECTORY="test_benchmarks"
OUTPUT_DIRECTORY="test_scrambled_benchmarks"

for file in $(find $BENCHMARK_DIRECTORY -name "*.smt2"); do
    filename=$(basename "$file")
    echo "Scrambling $filename ..."

    output="$OUTPUT_DIRECTORY/${filename::-5}_scram.smt2"

    ./scrambler -seed $1 < $file > $output

    echo "Scrambled file saved to $output"
    echo "********************************************"
done
