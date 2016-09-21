`timescale 1ns / 1ps
module Mux_2to1_by5(In0,In1,Out,Sel);
input			[4:0]	In0;
input			[4:0]	In1;
input						Sel;
output reg	[4:0]	Out;
always@(Sel,In0,In1)
begin
	Out =(Sel)? In0: In1;
end
endmodule
