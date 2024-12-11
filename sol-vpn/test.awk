#!/usr/local/bin/gawk -f

@include "common.awk"

BEGIN {
	
}

BEGINFILE {
	
}


/^hostname/{
    pe = $2;
}

/^ip vrf/{
    name =   pe "-" $3;
}

/^ route-target/{
    print name " " $2 " " $3;
}


ENDFILE {
	
}

END {
	
}
