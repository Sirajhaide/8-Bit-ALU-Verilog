`timescale 1ns / 1ps

module alu_design_8b_tb;
 reg[7:0] A;
 reg[7:0] B;
 reg[2:0] sel;
 wire [7:0] result;
 wire carry_flag;
 
 alu_design_8b uut(
 .A(A),
 .B(B),
 .sel(sel),
 .result(result),
 .carry_flag(carry_flag)
 );
 
 initial begin
 A=8'd00;
 B=8'd00;
 sel=3'b000;
 #10
 A=8'd12;
 B=8'd7;
 sel=3'b000;
 #10
 sel=3'b001;
 #10
 sel=3'b010;
 #10
 sel=3'b011;
 #10
 sel=3'b100;
 #10
 sel=3'b101;
 #10
 sel=3'b110;
 #10
 sel=3'b111;
 #10
 $stop;
 end
 endmodule