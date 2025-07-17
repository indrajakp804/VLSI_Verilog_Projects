module add_sub_module(M, a0, a1, a2, a3, b0, b1, b2, b3, s0, s1, s2, s3, carry);
    input M, a0, a1, a2, a3, b0, b1, b2, b3;
    output s0, s1, s2, s3, carry;
    wire t0, t1, t2, t3, c1, c2, c3;
    
    xor(t0, b0, M);
    xor(t1, b1, M);
    xor(t2, b2, M);
    xor(t3, b3, M);

    full_adder_module block0(a0, t0, M, s0, c1);
    full_adder_module block1(a1, t1, c1, s1, c2);
    full_adder_module block2(a2, t2, c2, s2, c3);
    full_adder_module block3(a3, t3, c3, s3, carry);    

endmodule