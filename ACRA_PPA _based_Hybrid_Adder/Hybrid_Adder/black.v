module black ( g1, p1, g2, p2, c_gen, c_prop ) ;
    
    input  g1, p1, g2, p2 ;
    output c_gen, c_prop  ;
    
    
    assign c_gen  = (g1 | ( p1 & g2 )) ;
    assign c_prop = p1 & p2            ;
    
endmodule
