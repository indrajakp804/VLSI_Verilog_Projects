module img_smoothening(sapp,ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9,op1,op2,op3,op4,op5,op6,op7,op8,op9);
input  sapp;
input  [7:0] ip1,ip2,ip3,ip4,ip5,ip6,ip7,ip8,ip9;        
output [15:0] op1,op2,op3,op4,op5,op6,op7,op8,op9;

wire  [7:0] p1,p2,p3,p4,p5,p6,p7,p8,p9; 

wire [15:0]a1,a2,a3,w1;
wire [15:0]a4,a5,a6,w2;
wire [15:0]a7,a8,a9,w3;

wire [15:0]aa1,aa2,aa3,ww1;
wire [15:0]aa4,aa5,aa6,ww2;
wire [15:0]aa7,aa8,aa9,ww3;


wire [15:0]aaa1,aaa2,aaa3,www1;
wire [15:0]aaa4,aaa5,aaa6,www2;
wire [15:0]aaa7,aaa8,aaa9,www3;



assign p1=1;
assign p2=2;
assign p3=1;
assign p4=2;
assign p5=4;
assign p6=2;
assign p7=1;
assign p8=2;
assign p9=1;

assign a1=ip1*p1;
assign a2=ip2*p4;
assign a3=ip3*p7;

pro_ks_acra u0(a1,a2,sapp,w1);
pro_ks_acra u1(w1,a3,sapp,op1);

assign a4=ip1*p2;
assign a5=ip2*p5;
assign a6=ip3*p8;

pro_ks_acra u2(a4,a5,sapp,w2);
pro_ks_acra u3(w2,a6,sapp,op2);

assign a7=ip1*p3;
assign a8=ip2*p6;
assign a9=ip3*p9;

pro_ks_acra u4(a7,a8,sapp,w3);
pro_ks_acra u5(w3,a9,sapp,op3);

assign aa1=ip4*p1;
assign aa2=ip5*p4;
assign aa3=ip6*p7;

pro_ks_acra uu0(aa1,aa2,sapp,ww1);
pro_ks_acra uu1(ww1,aa3,sapp,op4);

assign aa4=ip4*p2;
assign aa5=ip5*p5;
assign aa6=ip6*p8;

pro_ks_acra uu2(aa4,aa5,sapp,ww2);
pro_ks_acra uu3(ww2,aa6,sapp,op5);


assign aa7=ip4*p3;
assign aa8=ip5*p6;
assign aa9=ip6*p9;

pro_ks_acra uu4(aa7,aa8,sapp,ww3);
pro_ks_acra uu5(ww3,aa9,sapp,op6);


assign aaa1=ip7*p1;
assign aaa2=ip8*p4;
assign aaa3=ip9*p7;

pro_ks_acra uuu0(aaa1,aaa2,sapp,www1);
pro_ks_acra uuu1(www1,aaa3,sapp,op7);



assign aaa4=ip7*p2;
assign aaa5=ip8*p5;
assign aaa6=ip9*p8;

pro_ks_acra uuu2(aaa4,aaa5,sapp,www2);
pro_ks_acra uuu3(www2,aaa6,sapp,op8);

assign aaa7=ip7*p3;
assign aaa8=ip8*p6;
assign aaa9=ip9*p9;

pro_ks_acra uuu4(aaa7,aaa8,sapp,www3);
pro_ks_acra uuu5(www3,aaa9,sapp,op9);

endmodule
