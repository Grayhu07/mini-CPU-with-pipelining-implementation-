`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 00:51:33
// Design Name: 
// Module Name: IDEXE
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


module IDEXE(clk,wreg,m2reg,wmem,aluc,aluimm,qa,qb,SignExtend,
ewreg,em2reg,ewmem,ealuc,ealuimm,eqa,eqb,eSignExtend,temp,etemp);
    input clk;
    input wreg;
    input m2reg;
    input wmem;
    input [3:0] aluc;
    input aluimm;
    input [31:0] qa,qb,SignExtend;
    input [4:0] temp;
    
    output reg ewreg;
    output reg em2reg;
    output reg ewmem;
    output reg [3:0] ealuc;
    output reg ealuimm;
    output reg [31:0] eqa,eqb,eSignExtend;
    output reg [4:0] etemp;
    
    always @(posedge clk)
    begin
    ewreg <= wreg;
    em2reg <= m2reg;
    ewmem <= wmem;
    ealuc <= aluc;
    ealuimm <= aluimm;
    eqa <= qa;
    eqb <= qb;
    eSignExtend <= SignExtend;
    etemp <= temp;
    end
endmodule
