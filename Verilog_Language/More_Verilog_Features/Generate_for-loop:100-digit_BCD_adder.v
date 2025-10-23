module top_module( input [399:0] a, b, input cin, output cout, output [399:0] sum);
    
    wire [99:0] cout_temp;
    
    bcd_fadd inst0(a[3:0],b[3:0],cin,cout_temp[0],sum[3:0]);
    
    genvar i;
    generate
        for(i = 1;i < 100;i++) begin : bcd_add
            bcd_fadd insti(a[i*4+3:i*4],b[i*4+3:i*4],cout_temp[i-1],cout_temp[i],sum[i*4+3:i*4]);
        end
    endgenerate
    
    assign cout = cout_temp[99];

endmodule

