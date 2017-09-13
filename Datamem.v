`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/15 15:23:07
// Design Name: 
// Module Name: Datamem
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


module Datamem(we,a,di,do);
    input we;
    input [31:0] a;
    input [31:0] di;
    output reg [31:0] do;
    reg [7:0] dataM[255:0];
    always @(*) begin
    if(we) begin
    dataM[a] <= di;
    end
    do <= {dataM[a],dataM[a+1],dataM[a+2],dataM[a+3]};
    end
endmodule
