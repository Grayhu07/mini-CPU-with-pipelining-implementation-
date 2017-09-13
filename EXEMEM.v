`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 15:12:59
// Design Name: 
// Module Name: EXEMEM
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


module EXEMEM(clk,ewreg,em2reg,ewmem,etemp,r,eqb,mwreg,mm2reg,mwmem,mtemp,mr,mqb);
    input clk;
    input ewreg;
    input em2reg;
    input ewmem;
    input [4:0] etemp;
    input [31:0] r;
    input [31:0] eqb;
    output reg mwreg;
    output reg mm2reg;
    output reg mwmem;
    output reg [4:0] mtemp;
    output reg [31:0] mr;
    output reg [31:0] mqb;
    always @(posedge clk) begin
    mwreg <= ewreg;
    mm2reg <= em2reg;
    mwmem <= ewmem;
    mtemp <= etemp;
    mr <= r;
    mqb <= eqb;
    end
endmodule
