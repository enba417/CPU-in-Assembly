`timescale 1ns / 1ps
module Mux_2to1_by32(IN0,IN1,Output,Select);
input			[31:0]	IN0;
input			[31:0]	IN1;
input						Select;
output reg	[31:0]	Output;
always@(Select,IN0,IN1)
begin
	Output =(Select)? IN0: IN1;
end
endmodule