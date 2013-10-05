#!/bin/bash

PREFIX="$1"
IN="$PREFIX.cpp"

if [ ! -f "$IN" ]; then
    echo "usage: $0 prefix"
    echo
    echo "The prefix is the source file base name, without .cpp"
    exit 1
fi

function gcc_ver() {
    $1 --version | head -n1 | cut -d' ' -f 3 | cut -d. -f 1-2 | sed 's/\.//'
}

function gcc_compile() {
    SUFFIX="-gcc`gcc_ver $2`$1"
    shift 1
    echo $* -o"$PREFIX$SUFFIX" "$IN"
    $* -o"$PREFIX$SUFFIX" "$IN"
}

for gcc in g++; do
    gcc_compile "" $gcc -m32
    gcc_compile "-static" $gcc -m32 -static
    gcc_compile "-static-O2" $gcc -m32 -static -O2
done

