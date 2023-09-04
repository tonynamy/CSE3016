`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:54:22
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

reg x, y;
wire d, b;

inv u_inv(
    .x(x),
    .y(y),
    .d(d),
    .b(b)
);

initial begin
    x = 1'b0;
    y = 1'b0;
end

always x = #1 ~x;
always y = #2 ~y;

initial #4 $finish;

endmodule
