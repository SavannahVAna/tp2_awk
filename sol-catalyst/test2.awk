BEGIN{
    FS = "-";       # Séparateur d'entrée (champ d'entrée délimité par '-')
    OFS = "-";
    inde = 0;
    print "g=DiGraph()";
}

{
    liste[inde] = $0;
    inde++;
}

END{
    for (i = 0; i < inde; i++) {   # Parcourir tous les indices de `liste`
        split(liste[i], parts, FS);
        for (j = 0; j < inde; j++) {
            split(liste[j], parts2, FS);
            if(parts[1]!=parts2[1] && parts[4] == parts2[4]){
                print "g.add_edges([(\"" liste[i] "\",\"" liste[j]"\")])";
                #print "g.add_edges([(\"" liste[j] "\",\"" liste[i]"\")])";
            }
        }
    }
    print "g.show( figsize=[15,15], edge_color=\"blue\", vertex_color=\"lightgreen\")";
    print "g.connected_components()";
}