#!/bin/sh

gawk -f test.awk pe1.unix pe2.unix pe3.unix pe4.unix > inv.txt
grep export inv.txt | sort -k 3 > export.txt
grep inport inv.txt | sort -k 3 > import.txt
join -1 3 -2 3 export.txt import.txt > joined.txt
gawk -f inv_to_sage.awk joined.txt > sage_script
