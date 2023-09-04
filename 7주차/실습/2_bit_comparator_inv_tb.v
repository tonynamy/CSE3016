`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 15:00:55
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

reg a, b, c, d;
wire f1, f2, f3;

inv u_inv(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f1(f1),
    .f2(f2),
    .f3(f3)
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always a = #8 ~a;
always b = #4 ~b;
always c = #2 ~c;
always d = #1 ~d;

initial #16 $finish;

endmodule
