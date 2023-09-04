`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 15:00:23
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
wire oa, ob, oc, od, oe, of, og, odp;

inv u_inv(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .oa(oa),
    .ob(ob),
    .oc(oc),
    .od(od),
    .oe(oe),
    .of(of),
    .og(og),
    .odp(odp)
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
end

always a = #8 ~a;
always b = #4 ~b;
always c = #2 ~c;
always d = #1 ~d;

initial #16 $finish;

endmodule
