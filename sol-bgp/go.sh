#!/bin/sh

gawk -f test.awk r1.unix r2.unix r3.unix r4.unix r5.unix r6.unix > out.txt
gawk -f verify.awk out.txt > out2.txt
gawk -f generate_sage.awk out2.txt > sage_script.sage
