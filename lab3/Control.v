
module Control(Opcode,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp);

input [0:5] Opcode;
output reg RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump;
output reg [0:1] ALUOp;

always @(RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp)

begin
	case(Opcode)
		6'b000000: {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'b1001000010;
		6'b100011: {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'b0111100000;
		6'b101011: {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'b0100010000;
		6'b000100: {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'b0000001001;
		6'b000010: {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'b0000000100;
		default {RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Jump,ALUOp} = 10'bXXXXXXXXXX;
	endcase
end
