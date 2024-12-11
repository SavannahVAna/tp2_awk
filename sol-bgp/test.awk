#!/usr/local/bin/gawk -f

@include "common.awk"
# to run first
BEGIN {
	
}

BEGINFILE {
	
}

/^router/{
	router = $3;
}
/^ ip/{
	ip = $3;
}

/^ neighbor/{
	if ($3 !~ /^password/){
		print router " " ip " " $4 " " $2;
	}
}

ENDFILE {
	
}

END {
	
}
