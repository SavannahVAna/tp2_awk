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
	if ( flag ~ /access/ && vlan !=0){
		print host "-" it "-" flag "-" vlan;
	}
	else{
		if(flag ~/trunk/ && vlan !=0){
			split(vlan, parts, ",");
			for(i in parts){
				print host "-" it "-" flag "-" parts[i];
			}
		}
	}
	flag =0;
	vlan =0
	it = $2;
}

/^ switchport mode/{
	flag = $3
}

/^ switchport access vlan/{
	vlan = $4;
}

/^ switchport trunk allowed vlan/{
	vlan = $5
	
}

ENDFILE{
	if ( flag !=0 && vlan !=0){
		print host "-" it "-" flag "-" vlan;
	}
}