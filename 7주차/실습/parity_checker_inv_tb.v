`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 15:00:23
// Design Name: 
// Module Name: inv_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inv_tb;

reg a, b, c, d, p;
wire pec;

inv u_inv(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .p(p),
    .pec(pec)
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    p = 1'b0;
end

always a = #16 ~a;
always b = #8 ~b;
always c = #4 ~c;
always d = #2 ~d;
always p = #1 ~p;

initial #32 $finish;

endmodule
