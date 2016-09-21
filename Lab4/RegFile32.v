`timescale 1ns / 1ps

module RegFile32(Read1, Read2, WriteReg, WriteData, clock, RegWrite, Data1, Data2);
	input 	[4:0] 	Read1, Read2, WriteReg; //the register numbers to read or write
	input 	[31:0] 	WriteData; //Data to write
	input					RegWrite,	//the write control signal
							clock;	//the clock to trigger a write
	output	[31:0]	Data1, Data2;	//the register values read
	reg		[31:0]	RF	[31:0];	//32 registers each 32 bits wide
	
	assign Data1	=	RF[Read1];
	assign Data2	=	RF[Read2];

	always @(negedge clock)
	begin
		//if RegWrite control signal is asserted
		if (RegWrite == 1 && WriteReg != 5'h000) RF[WriteReg]	<= WriteData;
		
		RF[0] <= 32'h00000000;		//ensure $0 == 0
	end
	
endmodule
