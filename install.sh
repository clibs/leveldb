#!/bin/bash

if [ -z "${PREFIX}" ]; then
  PREFIX=/usr/local
fi

## make !
{
  ## clean just incase
  make clean -C .

  ## build
  make -C .
}

## include
mkdir -p "${PREFIX}/include/leveldb"
cp ./include/leveldb/*.h "${PREFIX}/include/leveldb"

## lib - copy them all !
## @TODO - be OS specific
cp lib* "${PREFIX}/lib"
