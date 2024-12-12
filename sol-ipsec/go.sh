#!/bin/sh

gawk -f test.awk conf1.unix conf2.unix conf3.unix conf4.unix > output1.txt
gawk -f verify.awk output1.txt > outdef.txt
gawk -f generate_sage.awk outdef.txt > sage_script.sage
