module ALU(A,	B,	aluctl, zero, Output);
	input 			[31:0]	A,	B;
	input				[3:0]		aluctl;
	output	reg	[31:0]	Output;
	output						zero;

	assign zero = !Output;
	
	always	@( A,	B,	aluctl )
	begin
		case(aluctl)
		4'b0000: Output <= A & B;					//AND
		4'b0001:	Output <= A | B;					//OR
		4'b0010: Output <= A + B;					//ADD
		4'b0110: Output <= A - B;					//SUBTRACT
		4'b0111: Output <= (A<B) ?	1 :	0;		//SET ONE LESS THEN
		4'b1100: Output <= ~(A|B);					//NOR
		default: Output <= 32'hX;					//INVALID OPERATION
		endcase
	end
endmodule
