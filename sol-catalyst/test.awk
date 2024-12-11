#!/usr/local/bin/gawk -f

@include "common.awk"

BEGINFILE{
	flag = 0;
	host = 0;
	it = 0;
	flag = 0
	vlan = 0
}


/hostname/{
	host = $2;
}

#reste at interface
/interface/{#tester flag a part
	if ( flag == 1 && vlan !=0){
		print host "-" it "-access-" vlan;
	}
	flag =0;
	vlan =0

	it = $2;
}

/^ switchport mode access/{
	flag =1;
}

/^ switchport access vlan/{
	vlan = $4;
}

ENDFILE{
	if ( flag == 1 && vlan !=0){
		print host "-" it "-access-" vlan;
	}
}