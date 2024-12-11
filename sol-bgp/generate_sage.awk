#!/usr/local/bin/gawk -f

BEGIN{
    print "g=DiGraph()"
}

{
    print "g.add_edges([(\"" $1 "\",\"" $3"\")])"
    print "g.add_edges([(\"" $3 "\",\"" $1"\")])"
}

ENDFILE{
    print "g.show(figsize=[10,5], edge_color=\"blue\", vertex_color=\"lightgreen\")"
    print "g.connected_components_number()"
    }