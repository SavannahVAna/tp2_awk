#!/usr/local/bin/gawk -f
#run firts
@include "common.awk"

BEGINFILE{
	delete peers;
	delete inter;
	crypto = 0;
	ip = 0;
}

/^crypto map/ { 
    crypto_map = $3                         # Capture la crypto map associée
}

/^ set peer/{
	peers[$3] = crypto_map ;
}

 #a chaque interface on met crypto map et ip dans une listr

/^interface/{
	if (ip !=0 && cr !=0){
		inter[ip,cr] =1;
	}
	ip = 0;
	cr = 0;
}

/^ ip address/{
	ip = $3;
}

/^ crypto map/{
	cr = $3;
}

ENDFILE{
	if (ip !=0 && cr !=0){
		inter[ip,cr] =1;
	}
	for (key in inter) {
        split(key, arr, SUBSEP);            # Décompose la clé (ip, crypto_map)
        source_ip = arr[1];                 # IP source
        crypto_map = arr[2];                # Crypto map
        for (peer in peers) {
            if (peers[peer] == crypto_map) {
                print source_ip, peer;      # Affiche le lien IP-Peer
            }
        }
    }
}
