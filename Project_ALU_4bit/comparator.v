module comparator(a0, b0, a1, b1, a2, b2, a3, b3, a_gt_b, a_eq_b, a_st_b);

    input a0, b0, a1, b1, a2, b2, a3, b3;
    output a_gt_b, a_eq_b, a_st_b;

    wire a0_not, a1_not, a2_not, a3_not, b0_not, b1_not, b2_not, b3_not; 
    not(a0_not, a0);
    not(a1_not, a1);
    not(a2_not, a2);
    not(a3_not, a3);
    not(b0_not, b0);
    not(b1_not, b1);
    not(b2_not, b2);
    not(b3_not, b3);

    wire node0, node1, node2, node3;
    xnor(node0, a0, b0);
    xnor(node1, a1, b1);
    xnor(node2, a2, b2);
    xnor(node3, a3, b3);
    and(a_eq_b, node0, node1, node2, node3);

    wire node4, node5, node6, node7;
    and(node4, a3, b3_not);
    and(node5, a2, b2_not, node3);
    and(node6, a1, b1_not, node3, node2);
    and(node7, a0, b0_not, node3, node2, node1);
    or(a_gt_b, node4, node5, node6, node7);

    wire node8, node9, node10, node11;
    and(node8, b3, a3_not);
    and(node9, b2, a2_not, node3);
    and(node10, b1, a1_not, node3, node2);
    and(node11, b0, a0_not, node3, node2, node1);
    or(a_st_b, node8, node9, node10, node11);

endmodule