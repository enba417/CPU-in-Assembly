`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:01:53 10/21/2015
// Design Name:   CPU_EU
// Module Name:   C:/Users/012877915/Lab5/CPU_EU_Test.v
// Project Name:  Lab5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_EU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_EU_Test;

	// Inputs
	reg clk;
	reg RegDst;
	reg ALUSrc;
	reg [1:0] ALUOp;
	reg RegWrite;
	reg MemtoReg;
	reg [25:0] Instruction;
	reg [31:0] Data_from_Ram;

	// Outputs
	wire [31:0] SEImm;
	wire [31:0] RAM_Address;
	wire [31:0] Data_to_Ram;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	CPU_EU uut (
		.clk(clk), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.ALUOp(ALUOp), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.Instruction(Instruction), 
		.SEImm(SEImm), 
		.RAM_Address(RAM_Address), 
		.Data_to_Ram(Data_to_Ram), 
		.Data_from_Ram(Data_from_Ram), 
		.Zero(Zero)
	);
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		RegDst = 0;
		ALUSrc = 0;
		ALUOp = 0;
		RegWrite = 0;
		MemtoReg = 0;
		Instruction = 0;
		Data_from_Ram = 0;

		// Wait 10 ns for global reset to finish
		#10;
        
		//----------------TEST R-Type Instructions------------------//
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 1: nor $31, $0, $0
				RegDst					= 1'b1;		//rd determines destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00000;	//rs	=	$0
				Instruction[20:16]	= 5'b00000;	//rt	=	$0
				Instruction[15:11]	= 5'b11111;	//rd	=	$31
				Instruction[5:0]		= 6'b100111;//function conde value nor
			end			//expected restult $31 <- 0xFFFFFFFF
			
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 1: nor $31, $0, $0");
				$display("expected result: $31 <- oxFFFFFFFF");
				$display("actual result: 	$31 = %h", uut.RF32.RF[ 31 ]);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 2: slt $1, $0, $31
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00000;	//rs	=	$0
				Instruction[20:16]	= 5'b11111;	//rt	=	$31
				Instruction[15:11]	= 5'b00001;	//rd	=	$1
				Instruction[5:0]		= 6'b101010;//function conde value slt
			end			//expected restult $1 <- 0x00000001
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 2: slt $1, $0, $31");
				$display("expected result: $1 <- 0x00000001");
				$display("actual result: 	$1 = %h", uut.RF32.RF[ 1 ]);
				end
		
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 3: OR $30, $0, $31
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00000;	//rs	=	$0
				Instruction[20:16]	= 5'b11111;	//rt	=	$31
				Instruction[15:11]	= 5'b11110;	//rd	=	$30
				Instruction[5:0]		= 6'b100101;//function conde value or
			end			//expected restult $30 <- 0xFFFFFFFF
			
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 3: OR $30, $0, $31");
				$display("expected result: $30 <- 0xFFFFFFFF");
				$display("actual result: 	$30 = %h", uut.RF32.RF[ 30 ]);
				end

		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 4: and $2, $30, $1
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b11110;	//rs	=	$30
				Instruction[20:16]	= 5'b00001;	//rt	=	$1
				Instruction[15:11]	= 5'b00010;	//rd	=	$2
				Instruction[5:0]		= 6'b100100;//function conde value and
			end			//expected restult $2 <- 0x00000000
		
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 4: and $2, $30, $1");
				$display("expected result: $2 <- 0x00000000");
				$display("actual result: 	$2 = %h", uut.RF32.RF[ 2 ]);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 5: sub $3, $30, $2
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b11110;	//rs	=	$30
				Instruction[20:16]	= 5'b00010;	//rt	=	$2
				Instruction[15:11]	= 5'b00011;	//rd	=	$3
				Instruction[5:0]		= 6'b100010;//function conde value slt
			end			//expected restult $3 <- 0x0000001C
			
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 5: sub $3, $30, $2");
				$display("expected result: $3 <- 0x0000001C");
				$display("actual result: 	$3 = %h", uut.RF32.RF[ 3 ]);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 6: add $4, $1, $2
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b10;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00001;	//rs	=	$1
				Instruction[20:16]	= 5'b00010;	//rt	=	$2
				Instruction[15:11]	= 5'b00100;	//rd	=	$4
				Instruction[5:0]		= 6'b100000;//function conde value slt
			end			//expected restult $4 <- 0x00000003
			
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 6: add $4, $1, $2");
				$display("expected result: $4 <- 0x00000003");
				$display("actual result: 	$4 = %h", uut.RF32.RF[ 4 ]);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 7: lw $5, 4($0)
				RegDst					= 1'b0;		//rd determins destination reguster
				ALUSrc					= 1'b1;		//pass regiser value to ALU
				ALUOp						= 2'b00;		//R-type instruction
				RegWrite					= 1'b0;		//write data to register
				MemtoReg					= 1'b1;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00000;	//rs	=	$0
				Instruction[20:16]	= 5'b00101;	//rt	=	$5
				Instruction[15:0]	= 16'b0000000000000100;	//4
				Data_from_Ram = 32'h12341234;
			end			//expected restult Ram_Adress <- 4
							//	uut.ALU.Output == 4
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 7: lw $5, 4($0)");
				$display("expected restult Ram_Adress <- 4");
				$display("expected result: uut.ALU.Output == 4");
				$display("actual result: 	Ram_Adress = %h", RAM_Address);
				$display("actual result: 	uut.ALU.Output = %h", uut.ALU.Output);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 8: sw $3, 12($5)
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b00;		//R-type instruction
				RegWrite					= 1'b1;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00101;	//rs	=	$5
				Instruction[20:16]	= 5'b00011;	//rt	=	$3
				Instruction[15:0]	= 16'b0000000000001100;	//12
			end			//expected restult RAM_Adress <- 12341234
							// Data_to_RAM <- 0xFFFFFFFE
							
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 8: sw $3, 12($5)");
				$display("expected restult Ram_Adress <- 12341234");
				$display("expected result: Data_to_RAM <- 0xFFFFFFFE");
				$display("actual result: 	Ram_Adress = %h", RAM_Address);
				$display("actual result: 	Data_to_RAM = %h", Data_to_Ram);
				end
			
		@(posedge clk)	//assign test signals on positive clock edge
			begin			//Test case 9: beq $1, $2, 0x0003
				RegDst					= 1'b1;		//rd determins destination reguster
				ALUSrc					= 1'b0;		//pass regiser value to ALU
				ALUOp						= 2'b01;		//R-type instruction
				RegWrite					= 1'b0;		//write data to register
				MemtoReg					= 1'b0;		//pass ALU result to RegFile
				Instruction[25:21]	= 5'b00001;	//rs	=	$1
				Instruction[20:16]	= 5'b00010;	//rt	=	$2
				Instruction[15:0]		= 16'b0000000000000011;	//mem is 0x0003
			end			//expected restult Zero = 1;
			
		@(negedge clk)	//result is read n negative edge of clock
							//since register is written on negedge
				
				begin
				#1;	//wait 1 time unit to ensure data is ready to be read
				$display("Test case 9: beq $1, $2, 0x0003");
				$display("expected restult Zero <- 1");
				$display("actual result: 	Zero = %h", Zero);
				end
		
			
	end
      
endmodule

