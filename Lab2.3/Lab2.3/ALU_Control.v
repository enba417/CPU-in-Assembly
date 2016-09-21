module ALU_Control(FuncCode, ALU_Op, ALU_Ctl);

input [5:0] FuncCode;
input [1:0] ALU_Op;

output reg [3:0] ALU_Ctl;

always @(FuncCode,ALU_Op)
begin
	casex({FuncCode,ALU_Op})
	8'b100000_10:ALU_Ctl <= 4'b0010;
	8'b100010_10:ALU_Ctl <= 4'b0110;
	8'b100100_10:ALU_Ctl <= 4'b0000;
	8'b100101_10:ALU_Ctl <= 4'b0001;
	8'b101010_10:ALU_Ctl <= 4'b0111;
	8'b100111_10:ALU_Ctl <= 4'b1100;
	
	//I-Type Memory Access Instruction
	8'bXXXXXX_00:ALU_Ctl <= 4'b0010;
	
	//I-Type BEQ Instruction
	8'bXXXXXX_X1:ALU_Ctl <= 4'b0110;
	
	default: ALU_Ctl <= 4'bX;
	endcase
end

endmodule
