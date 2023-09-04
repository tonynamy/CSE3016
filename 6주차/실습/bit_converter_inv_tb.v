`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:57:01
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
wire w, x, y, z;

inv u_inv(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always a = #1 ~a;
always b = #2 ~b;
always c = #4 ~c;
always d = #8 ~d;

initial #16 $finish;

endmodule
