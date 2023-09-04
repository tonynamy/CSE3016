`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 15:12:40
// Design Name: 
// Module Name: or_four
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
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
);

assign e = ~(a|b);
assign f = ~(~(a|b)|c);
assign g = ~(~(~(a|b)|c)|d);

endmodule
