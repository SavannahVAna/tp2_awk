BEGINFILE {
    print "g=DiGraph()"
}


$2 == 4 && $3 == "export" && $5 == "import" {
    print "g.add_vertex([(\"" $2"\")])"
}

$2 != $4 {
    print "g.add_edges([(\"" $2 "\",\"" $4"\")])"
}

ENDFILE{
    print "g.show(figsize=[15,15], edge_color=\"blue\", vertex_color=\"lightgreen\")"
    print "g.connected_components_number()"
}