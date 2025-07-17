module pro_acra(a,b,cin,sapp,sum,cout,c1,c2,c3);
input   [7:0]a,b;
input    cin,sapp;
output  [7:0] sum;
output   cout;
inout c1,c2,c3;

rd4a u0(a[1:0],b[1:0],cin,sum[1:0],c1);
acra u1(a[3:2],b[3:2],c1,sapp,sum[3:2],c2);
acra u2(a[5:4],b[5:4],c2,sapp,sum[5:4],c3);
acra u3(a[7:6],b[7:6],c3,sapp,sum[7:6],cout);

endmodule
