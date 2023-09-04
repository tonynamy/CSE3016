`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 15:00:41
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
    output f1, f2, f3
);

// f1 =  bc'd' + ac' + abd'
// f2 = a'b'c'd' + a'bc'd + ab'cd' + abcd
// f3 = a'b'd + a'c + b'cd
assign f1 = (b & ~c & ~d) | (a & ~c) | (a & b & ~d);
assign f2 =  (~a & ~b & ~c & ~d) | (~a & b & ~c & d) | (a & ~b & c & ~d) | (a & b & c & d);
assign f3 = (~a & ~b & d) | (~a & c) | (~b & c & d);

endmodule
