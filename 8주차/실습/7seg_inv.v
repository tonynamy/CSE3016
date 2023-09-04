`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/31 14:58:08
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
    output oa, ob, oc, od, oe, of, og, odp, digit
);


// a = b'd' + a'c + a'bd + ab'c' + ad' + bc
assign oa= (~b & ~d) | (~a & c) | (~a & b & d) | (a & ~b & ~c) | (a & ~d) | (b & c);

// b = a'c'd' + a'cd + b'd' + ac'd + a'b'
assign ob=(~a & ~c & ~d) | (~a & c & d) | (~b & ~d) | (a & ~c & d) | (~a & ~b);

// c = a'b + ab' + c'd + a'c' + a'd
assign oc=(~a & b) | (a & ~b) | (~c & d) | (~a & ~c) | (~a & d);

// d = bc'd + b'cd + a'b'd' + bcd' + ac'd'
assign od=(b & ~c & d) | (~b & c & d) | (~a & ~b & ~d) | (b & c & ~d) | (a & ~c & ~d);

// e = b'd' + cd' + ac + ab
assign oe= (~b & ~d) | (c & ~d) | (a & c) | (a & b);

// f =  c'd' + a'bc' + bd' + ab' + ac
assign of=  (~c & ~d) | (~a & b & ~c) | (b & ~d) | (a & ~b) | (a & c);

// g =  b'c + ab' + a'bc' + cd' + ad
assign og= (~b & c) | (a & ~b) | (~a & b & ~c) | (c & ~d) | (a & d);

assign odp=1;

assign digit = oa|ob|oc|od|oe|of|og|odp;

endmodule
