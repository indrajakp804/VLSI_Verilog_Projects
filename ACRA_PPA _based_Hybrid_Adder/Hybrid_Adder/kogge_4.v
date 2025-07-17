module kogge_4(a,b,cin,s,cr);
input [3:0]a,b;
input cin;
output [3:0]s;
output cr;
         
         
         
   wire [3:0]gt , pe   ; 
   wire [2:0]gt1, pe1  ; 
   wire [1:0]gt2, pe2  ;
         
     
                //normal propagate and generate
   assign pe= a^b;  
	assign gt= a&b;   
	
//   pre u0( a[0],  b[0],  gt[0],  pe[0]); 
//   pre u1( a[1],  b[1],  gt[1],  pe[1]); 
//   pre u2( a[2],  b[2],  gt[2],  pe[2]); 
//   pre u3( a[3],  b[3],  gt[3],  pe[3]); 
                 
                
                       
                       //black dot stage 1
                
   black u4( gt[1],  pe[1],  gt[0],  pe[0],  gt1[0], pe1[0] ) ;
   black u5( gt[2],  pe[2],  gt[1],  pe[1],  gt1[1], pe1[1] ) ;
   black u6( gt[3],  pe[3],  gt[2],  pe[2],  gt1[2], pe1[2] ) ;
        
         
         
                             
                               // stage 2
                      
   black u71( gt1[1], pe1[1], gt[0], pe[0], gt2[0], pe2[0] ) ;
   black u72( gt1[2], pe1[2], gt1[0], pe1[0], gt2[1], pe2[1] ) ;
   
                  
                                       
                           
                           
                //final sum calculation
                
   assign s[0]=pe[0]^cin;
   assign c0=(pe[0]&cin)|gt[0];
	assign s[1]=pe[1]^c0;
   assign c1=(pe[1]&c0)|gt1[0];
   assign s[2]=pe[2]^c1;
   assign c2=(pe[2]&c1)|gt2[0];
	assign s[3]=pe[3]^c2;
   assign cr=(pe[3]&c2)|gt2[1];      
         
   //assign  cr = gt2[1] ;   //carry out

endmodule
            
         
         
