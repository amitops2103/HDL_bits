module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1;
    wire[15:0] sum0,sum1;
    add16 inst0(a[15:0],b[15:0],1'b0,sum0,cout1);
    add16 inst1(a[31:16],b[31:16],cout1,sum1);
    assign sum={sum1,sum0};

endmodule

