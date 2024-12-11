#!/usr/local/bin/gawk -f

@include "common.awk"
#second
{
    pair[$1, $2, $3, $4] = 1;
    if (pair[$3, $4, $1, $2]) {
        print $1, $2, $3, $4;
    }
}