#!/usr/local/bin/gawk -f

BEGIN{
    print "g=DiGraph()"
}

{
    print "g.add_edges([(\"" $1 "\",\"" $2"\")])"
    print "g.add_edges([(\"" $2 "\",\"" $1"\")])"
}

ENDFILE{
    print "g.show(figsize=[10,5], edge_color=\"blue\", vertex_color=\"lightgreen\")"
    print "g.connected_components_number()"
    }