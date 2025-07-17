module and_module(a0, a1, a2, a3, b0, b1, b2, b3, out0, out1, out2, out3);
    input a0, a1, a2, a3, b0, b1, b2, b3;
    output out0, out1, out2, out3;

    and(out0, a0, b0);
    and(out1, a1, b1);
    and(out2, a2, b2);
    and(out3, a3, b3);

endmodule