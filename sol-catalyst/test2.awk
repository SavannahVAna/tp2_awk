BEGIN{
    FS = "-";       # Séparateur d'entrée (champ d'entrée délimité par '-')
    OFS = "-";
    cat = "";  
}

{
    liste[$1,$4] = $2;
}

END{
    for (id1 in liste) {
        split(id1, parts1, ",");
        #print(parts1[1] " " parts1[2] " access " parts1[3]);
        for(id2 in liste){
            
        }
    }
}