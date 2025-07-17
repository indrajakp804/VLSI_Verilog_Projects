module rd4a_8(a,b,cin,sum,cout);
input   [7:0]a,b;
input    cin;
output  [7:0] sum;
output   cout;


rd4a u0(a[1:0],b[1:0],cin,sum[1:0],c1);
rd4a u1(a[3:2],b[3:2],c1,sum[3:2],c2);
rd4a u2(a[5:4],b[5:4],c2,sum[5:4],c3);
rd4a u3(a[7:6],b[7:6],c3,sum[7:6],cout);

endmodule

