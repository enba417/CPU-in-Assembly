`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:06:54 09/23/2015
// Design Name:   RegFile32
// Module Name:   C:/Users/012877915/Lab4/RegFile32_test.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegFile32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegFile32_test;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg clock;
	reg RegWrite;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	RegFile32 uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.clock(clock), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2)
	);
	integer i;	//loop index variable
	
	always	#5	clock = ~clock;	//clock pulse generation

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		clock = 0;
		RegWrite = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		$display("Writing to Registers");
		$display("--------------------");
		
		//register initialization loop
		for(i = 0; i < 32; i = i + 1)
		begin
			@(negedge clock)
			begin
				WriteData	=	$random;
				WriteReg		=	i;
			end
			@(posedge clock)
				#0 $display("$%d <- 0x%h", WriteReg, WriteData);
		end
	RegWrite = 0;

		//read loop
		$display("Reading to Registers");
		$display("--------------------");
	for(i = 0; i < 32; i = i + 2)
	begin
		@(negedge clock)
		begin
			Read1 = i;
			#0 $display("$%d <- 0x%h", Read1, Data1);
			Read2 = i + 1;
			#0 $display("$%d <- 0x%h", Read2, Data2);
			i = i + 2;
		end
		
		@(posedge clock)
		begin
			Read1 = i;
			#0 $display("$%d <- 0x%h", Read1, Data1);
			Read2 = i + 1;
			#0 $display("$%d <- 0x%h", Read2, Data2);
		end
	end
	$stop;
	end
      
endmodule

