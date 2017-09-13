`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 15:04:43
// Design Name: 
// Module Name: ALU
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


module ALU(ealuc,a,b,r);
    input [3:0] ealuc;
    input [31:0] a;
    input [31:0] b;
    output reg [31:0] r;
    always @(*) begin
        case(ealuc)
        0: r <= a+b;
        1: r <= a&b;
        2: r <= a^b;
        3: r <= b<<a;
        4: r <= a-b;
        5: r <= a|b;
        7: r <= b>>a;
        default r <= 0;
        endcase
    end
endmodule
