module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    add1 inst0(a[0],b[0],cin,sum[0],cout[0]);
    genvar i;
    generate
        for(i=1;i<100;i++) begin :full_adder 
            add1 insti(a[i],b[i],cout[i-1],sum[i],cout[i]);
        end
    endgenerate
endmodule
module add1 ( input a, input b, input cin,   output sum, output cout );

    assign sum={a^b}^cin;
    assign cout={a^b}&cin|{a&b};

endmodule

