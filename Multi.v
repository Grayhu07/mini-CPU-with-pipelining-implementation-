`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/23 17:36:41
// Design Name: 
// Module Name: Multi
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


module Multi(wm2reg,wr,wdo,d);
    input wm2reg;
    input [31:0] wr;
    input [31:0] wdo;
    output reg [31:0] d;
    always @(*) begin
    if(wm2reg == 0)
    d <= wr;
    else
    d <= wdo;
    end
endmodule
