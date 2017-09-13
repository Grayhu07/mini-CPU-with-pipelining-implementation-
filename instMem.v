`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/04/03 18:11:49
// Design Name: 
// Module Name: instMem
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


module instMem(a,do);
    input [31:0] a;
    output reg [31:0] do;
    reg [7:0] instr [0:255];
    initial
    begin
    instr[100] = 8'b00000000;
    instr[101] = 8'b00100010;//$1 is register number 1,$2 is register number 2
    instr[102] = 8'b00011000;
    instr[103] = 8'b00100000;// add $3,$1,$2
    
    instr[104] = 8'b00000000;
    instr[105] = 8'b00000000;
    instr[106] = 8'b00000000;
    instr[107] = 8'b00000000;//do nothing, stall
    
    instr[108] = 8'b00000000;
    instr[109] = 8'b00000000;
    instr[110] = 8'b00000000;
    instr[111] = 8'b00000000;//do nothing,stall
    
    instr[112] = 8'b00000001;
    instr[113] = 8'b00100011;// rs = $9.rt = $3
    instr[114] = 8'b00100000;// rd = $4
    instr[115] = 8'b00100010;// sub $4,$9,$3
    
    instr[116] = 8'b00000000;
    instr[117] = 8'b01101001; 
    instr[118] = 8'b00101000; 
    instr[119] = 8'b00100101; //or $5,$3,$9
    
    instr[120] = 8'b00000000;
    instr[121] = 8'b01101001; 
    instr[122] = 8'b00110000; 
    instr[123] = 8'b00100110; //xor $6,$3,$9
    
    instr[124] = 8'b00000000;
    instr[125] = 8'b01101001; 
    instr[126] = 8'b00111000; 
    instr[127] = 8'b00100100; //and $7,$3,$9
    end
    always @(*) begin
    do ={instr[a],instr[a+1],instr[a+2],instr[a+3]};
    end
    
endmodule
