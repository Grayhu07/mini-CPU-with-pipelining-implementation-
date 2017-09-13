`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 00:44:38
// Design Name: 
// Module Name: program_counter
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


module program_counter(clk,pc);
    input clk;
    output reg [31:0] pc;
    parameter increase_value = 32'd4;
    
    initial begin
    pc <= 32'd96;
    end
    
    always @(posedge clk)
    begin 
    pc <= pc + increase_value;
    end
    
    
endmodule
