module top_module(input [31:0] a,input [31:0] b,input sub,output [31:0] sum);
    wire [31:0]sub_xor;
    wire [15:0] sum0,sum1;
    wire cout0,cout1;
    
    
    assign sub_xor={32{sub}}^b;
     add16 inst0(a[15:0],sub_xor[15:0],sub,sum0,cout0);
     add16 inst1(a[31:16],sub_xor[31:16],cout0,sum1,cout1);
    
    assign sum={sum1,sum0};

endmodule

