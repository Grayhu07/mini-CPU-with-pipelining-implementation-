`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Kechen Hu
// 
// Create Date: 2017/04/01 21:59:38
// Design Name: 
// Module Name: miniCPU
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


module top(clk,LED);
    input clk;
    output LED;
    wire [31:0] value;
    wire [5:0] op,func;
    wire [4:0] rd,rt,rs;
    wire [3:0] aluc;
    wire [3:0] ealuc;
    wire [31:0] qa,qb;
    wire wreg;
    wire m2reg;
    wire wmem;
    wire aluimm;
    wire regrt;
    wire mwreg;
    wire mm2reg;
    wire mwmem;
    wire [4:0] mtemp;
    wire [4:0] wtemp;
    wire [31:0] mr;
    wire [31:0] wr,wdo;
    wire [31:0] mqb;
    wire [31:0] pc;
    wire [31:0] b;
    wire [31:0] r;
    wire [31:0] SignExtend;
    wire [15:0] imm;
    wire [31:0] do;
    wire ewreg,em2reg,ewmem,ealuimm;
    wire wwreg,wm2reg;
    wire [31:0] eqa,eqb;
    wire [31:0] eSignExtend;
    wire [4:0] temp;
    wire [4:0] etemp;
    wire [31:0] nextpc;
    wire [31:0] d;
    assign SignExtend = {{16{imm[15]}},imm[15:0]};
    program_counter p1(clk,pc);
    assign LED = (pc >= 32'd128) ? 1 : 0;
    instMem i1(pc,value);
    IFID r2(clk,value,op,func,rs,rt,rd,imm);
    regfile r1(clk,rs,rt,wwreg,wtemp,d,qa,qb);
    control_unit c1(op,func,wreg,m2reg,wmem,aluc,aluimm,regrt);
    mux m1(rd,rt,temp,regrt);
    IDEXE r3(clk,wreg,m2reg,wmem,aluc,aluimm,qa,qb,SignExtend,
    ewreg,em2reg,ewmem,ealuc,ealuimm,eqa,eqb,eSignExtend,temp,etemp);
    Multiplex m2(ealuimm,eqb,eSignExtend,b);
    ALU a1(ealuc,eqa,b,r);
    EXEMEM r4(clk,ewreg,em2reg,ewmem,etemp,r,eqb,mwreg,mm2reg,mwmem,mtemp,mr,mqb);
    Datamem d1(mwmem,mr,mqb,do);
    MEMWB r5(clk,mwreg,mm2reg,mtemp,mr,do,wwreg,wm2reg,wtemp,wr,wdo);
    Multi m3(wm2reg,wr,wdo,d);
endmodule
module mux(rd,rt,temp,regrt);
    input [4:0] rd,rt;
    input regrt;
    output reg [4:0] temp;
    always @(*) begin
    if (regrt == 0)
    begin
    temp <= rd;
    end
    else begin
    temp <= rt;
    end
    end
endmodule