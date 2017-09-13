`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 00:50:40
// Design Name: 
// Module Name: control_unit
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


module control_unit(op,func,wreg,m2reg,wmem,aluc,aluimm,regrt);
    input [5:0] op,func;
    output reg wreg;
    output reg m2reg;
    output reg wmem;
    output reg [3:0] aluc;
    output reg aluimm;
    output reg regrt;
    
    always @(*)
    if(op == 6'b100011) // lw
    begin
    wreg <= 1;
    regrt <= 1;
    m2reg <= 1;
    aluimm <= 1;
    aluc <= 4'b0000;
    wmem <= 0;
    end
    else if(op == 6'b000000 && func == 6'b100000) //add
    begin
    regrt<=0;
    aluc<= 4'b0000;
    m2reg<=0;
    wreg<=1;
    aluimm<=0;
    wmem<=0;
    end
    else if(op == 6'b000000 && func == 6'b100010) // sub
    begin
    regrt <= 0;
    aluc <= 4'b0100;
    m2reg <= 0;
    wreg <= 1;
    aluimm <= 0;
    wmem <= 0;
    end
    else if(op == 6'b000000 && func == 6'b100100) //and
    begin
    regrt <= 0;
    aluc <= 4'b0001;
    m2reg <= 0;
    wreg <= 1;
    aluimm <= 0;
    wmem <= 0;
    end
    else if(op == 6'b000000 && func == 6'b100101) //or
    begin
    regrt <= 0;
    aluc <= 4'b0101;
    m2reg <= 0;
    wreg <= 1;
    aluimm <= 0;
    wmem <= 0;
    end
    else if(op == 6'b000000 && func == 6'b100110) //xor
    begin
    regrt <= 0;
    aluc <= 4'b0010;
    m2reg <= 0;
    wreg <= 1;
    aluimm <= 0;
    wmem <= 0;
    end
endmodule