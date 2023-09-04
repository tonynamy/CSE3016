`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/10 14:56:44
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
    input a, b, c, d,
    output w, x, y, z
);

// w = bd + bc + a
// x = bd' + bc + a
// y = b'c + bc'd + a
// z = d

assign w = (b & d) | (b & c) | (a);
assign x = (b & ~d) | (b & c) | (a);
assign y = (~b & c) | (b & ~c & d) | (a);
assign z = d;

endmodule
