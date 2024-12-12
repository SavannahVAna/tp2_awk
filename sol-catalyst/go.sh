#!/bin/sh

gawk -f test.awk cat1.unix cat2.unix cat3.unix cat4.unix > output.txt
gawk -f test2.awk output.txt > graph.sage