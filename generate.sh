#!/usr/bin/env bash

mkdir -p tests
for i in microscheme-tests/*.rkt; do
    racket compile.rkt < $i | racket lc-hybrid.rkt > tests/`basename $i .rkt`.scm
done
for i in lambda-tests/*.scm; do
    cp $i tests/`basename $i`
done
