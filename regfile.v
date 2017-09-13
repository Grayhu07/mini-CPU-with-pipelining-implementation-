`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 00:49:22
// Design Name: 
// Module Name: regfile
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


module regfile(clk,rna,rnb,we,wn,d,qa,qb);
    input clk;
    input [4:0] rna,rnb;
    input we;
    input [4:0] wn;
    input [31:0] d;
    output [31:0] qa,qb;
    reg [31:0] register[0:31];
    integer i;
    initial begin
    register[0] = 32'hA00000AA;
    register[1] = 32'h10000011;
    register[2] = 32'h20000022;
    register[3] = 32'h30000033;
    register[4] = 32'h40000044;
    register[5] = 32'h50000055;
    register[6] = 32'h60000066;
    register[7] = 32'h70000077;
    register[8] = 32'h80000088;
    register[9] = 32'h90000099;
    for(i = 11; i<32; i=i+1)
        register[i] = 32'h00000000;//assume all other registers have value 0
    end
    assign qa = (rna == 0) ? 0 : register[rna];
    assign qb = (rnb == 0) ? 0 : register[rnb];
    always @(negedge clk) begin
    if (wn != 0 && we)
    register[wn] = d;
    end
endmodule
