`timescale 1ns / 1ps

module alu_design_8b(
input [7:0] A,
input [7:0] B,
input [2:0] sel,
output reg [7:0] result,
output reg carry_flag
);
always@(*)begin
carry_flag=1'b0;
case(sel)
3'b000:begin
{carry_flag,result}=A+B;
end
3'b001:begin
result=A-B;
end
3'b010:begin
result=A&B;
end
3'b011:begin
result=A|B;
end
3'b100:begin
result=A^B;
end
3'b101:begin
result=~A;
end
3'b110:begin
result=A + 8'd1;
end
3'b111:begin
result=A - 8'd1;
end
default:begin
result=8'b00000000;
end
endcase
end
endmodule

 