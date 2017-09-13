`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 15:46:26
// Design Name: 
// Module Name: MEMWB
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


module MEMWB(clk,mwreg,mm2reg,mtemp,mr,do,wwreg,wm2reg,wtemp,wr,wdo);
    input clk;
    input mwreg;
    input mm2reg;
    input [4:0] mtemp;
    input [31:0] mr;
    input [31:0] do;
    output reg wwreg;
    output reg wm2reg;
    output reg [4:0] wtemp;
    output reg [31:0] wr;
    output reg [31:0] wdo;
    always @(posedge clk) begin
    wwreg <= mwreg;
    wm2reg <= mm2reg;
    wtemp <= mtemp;
    wr <= mr;
    wdo <= do;
    end
endmodule
