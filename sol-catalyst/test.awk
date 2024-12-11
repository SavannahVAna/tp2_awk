#!/usr/local/bin/gawk -f

@include "common.awk"

BEGIN {
	print("BEGIN test");
}

BEGINFILE {
	print("begin processing file: ", FILENAME);
}

/^interface.*$/ {
	print_err("error detected",$0,FNR);
}

ENDFILE {
	print("end processing file: ", FILENAME);
}

END {
	print("END test");
}
