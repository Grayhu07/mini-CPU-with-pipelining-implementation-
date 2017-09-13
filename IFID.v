`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 00:45:35
// Design Name: 
// Module Name: IFID
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


module IFID(clk,value,op,func,rs,rt,rd,imm);
    input [31:0] value;
    input clk;
    output reg [5:0] op,func;
    output reg [4:0] rs,rt,rd;
    output reg [15:0] imm;
    
    always @(posedge clk)
    begin
    op <= value[31:26];
    rs <= value[25:21];
    rt <= value[20:16];
    rd <= value[15:11];
    func <= value[5:0];
    imm <= value[15:0];

    end
endmodule
