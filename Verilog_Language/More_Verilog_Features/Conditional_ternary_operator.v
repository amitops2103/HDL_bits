module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    wire [7:0] t1,t2;
    
    assign t1=a<b?a:b;
    assign t2=c<d?c:d;
    
    assign min=t1<t2?t1:t2;
    


endmodule

