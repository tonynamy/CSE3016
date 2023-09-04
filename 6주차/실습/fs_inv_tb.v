`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:56:04
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

reg x, y, b0;
wire d, b;

inv u_inv(
    .x(x),
    .y(y),
    .b0(b0),
    .d(d),
    .b(b)
);

initial begin
    x = 1'b0;
    y = 1'b0;
    b0 = 1'b0;
end

always x = #1 ~x;
always y = #2 ~y;
always b0 = #4 ~b0;

initial #8 $finish;

endmodule
