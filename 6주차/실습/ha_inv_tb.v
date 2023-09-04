`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:51:45
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

reg a, b;
wire s, c;

inv u_inv(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
);

initial begin
    a = 1'b0;
    b = 1'b0;
end

always a = #1 ~a;
always b = #2 ~b;

initial #4 $finish;

endmodule
