module pro_ks_acra(a,b,sapp,sum);
input   [15:0]a,b;
input   sapp;
output  [15:0] sum;
wire    cout;

acra u0(a[1:0],b[1:0],1'b0,sapp,sum[1:0],c1);
acra u1(a[3:2],b[3:2],c1,sapp,sum[3:2],c2);
acra u2(a[5:4],b[5:4],c2,sapp,sum[5:4],c3);
acra u3(a[7:6],b[7:6],c3,sapp,sum[7:6],c4);

kogge_4 u4(a[11:8],b[11:8],c4,sum[11:8],c5);
kogge_4 u5(a[15:12],b[15:12],c5,sum[15:12],cout);


endmodule
