BEGIN{
    FS = "-";       # Séparateur d'entrée (champ d'entrée délimité par '-')
    OFS = "-";
    cat = "";  
}

{
    liste[$1,$4] = 1;
    liste_cat[$1] = 1;
    liste_vlan[$4] = 1;
}