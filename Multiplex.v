`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 15:02:21
// Design Name: 
// Module Name: Multiplex
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


module Multiplex(ealuimm,eqb,eSignExtend,b);
    input [31:0] eqb;
    input ealuimm;
    input [31:0] eSignExtend;
    output reg [31:0] b;
    always @(*)begin
    if(ealuimm == 0) begin
    b <= eqb;
    end
    else begin
    b <= eSignExtend;
    end
    end
endmodule
