#!/bin/sh

CABAL=${CABAL:cabal}

HPC_DIR=dist/hpc

${CABAL} clean
${CABAL} configure --enable-tests --enable-library-coverage
${CABAL} build
${CABAL} test

open ${HPC_DIR}/html/*/hpc-index.html
