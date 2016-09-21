`timescale 1ns / 1ps

module CPU_EU( clk, RegDst, ALUSrc, ALUOp, RegWrite, MemtoReg,
					Instruction, SEImm,
					RAM_Address, Data_to_Ram, Data_from_Ram,
					Zero	);
					
	input			clk,			//clock signal for synchronous operations
					RegDst,			//Chooses rd or rt for destination register
					ALUSrc,			//chooses ReadData2 or SEImm for ALU_InputB
					RegWrite,		//enables a value to be written to a register
					MemtoReg;		//selects a value from RAM or from ALU to go to regfile
					
	input	[1:0]	ALUOp;			//ALU Operation Mode control signal
	
	input	[25:0]	Instruction;	//26-bit portion of instruction used by EU modules
	input	[31:0]	Data_from_Ram;	//value loaded from ram to be written to a register
	
	output	[31:0]	SEImm,			//Sign Extended Immediate data
					RAM_Address,	//RAM address value for load or store
					Data_to_Ram;	//Register value to be stored in RAM
					
	output			Zero;			//The Zero Flag
	
	
	
	//internal connection buses
	wire	[4:0]	WriteRegister;	//Register to be written as chosen by RegDstMux
	wire	[3:0]	ALUCtl;			//4-bit	control signal to tell ALU what to do
	wire	[31:0]	ReadData1,		//Data output 1 from Reg File
					ReadData2,		//Data output 2 from Reg Fie
					ALU_InputB,		//Value to feed into the ALU's B input
					RegWriteData,	//Value to be written to a register
					ALU_Result;		//Result of ALU computation
	
	Mux_2to1_by5		RegDstMux		(	.In0(	Instruction[20:16]	),
													.In1(	Instruction[15:11]	),
													.Sel(	RegDst),
													.Out(	WriteRegister	)
												);
	RegFile32			RF32				(	.Read1(	Instruction[25:21]	),
													.Read2(	Instruction[20:16]	),
													.WriteReg(	WriteRegister	),
													.WriteData(	RegWriteData	),
													.clock(	clk	),
													.RegWrite(	RegWrite	),
													.Data1(	ReadData1	),
													.Data2(	ReadData2	)
												);
	SignExtend_16to32	SE32				(	.SE_In(	Instruction[15:0]	),
													.SE_Out(	SEImm	)
												);
	ALU_Control			ALUCtlr			(	.ALU_Op(	ALUOp	),
													.FuncCode(	Instruction[5:0]	),
													.ALU_Ctl(	aluctl	)
												);
	Mux_2to1_by32		ALUSrcMux		(	.IN0(	Data2	),
													.IN1(	SE_Out	),
													.Select(	ALUSrc),
													.Output(	B	)
												);
	Mux_2to1_by32		MemToRegMux		(	.IN0(	aluout	),
													.IN1(	Data_from_RAM	),
													.Select(	MemtoReg),
													.Output(	WriteData	)
												);
	ALU					ALU				(	.A(	Data1	),
													.aluctl(	ALU_Ctl	),
													.B(	Output	),
													.Output(	RAM_Address),
													.zero(	Zero	)
												);
	assign	RAM_Address = ALU_Result;		//ALU Result is also a calculated RAM Address for sw, lw
	assign	Data_to_RAM = ReadData2;		//Data2 holds a value to be stored in RAM for sw
	
	endmodule