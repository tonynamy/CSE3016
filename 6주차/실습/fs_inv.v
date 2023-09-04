`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:55:50
// Design Name: 
// Module Name: inv
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


module inv(
    input x, y, b0,
    output d, b
);

assign d = x^y^b0;
assign b = ((~x)&y)|((~(x^y))&b0);

endmodule