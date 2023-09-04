`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 15:16:09
// Design Name: 
// Module Name: and_four_tb
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

reg a, b, c;
wire d;

inv u_inv(
    .a (a),
    .b (b),
    .c (c),
    .d (d)
);


initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
end

always a = #1 ~a;
always b = #2 ~b;
always c = #4 ~c;

always begin
    #8
    $finish;
end

endmodule
