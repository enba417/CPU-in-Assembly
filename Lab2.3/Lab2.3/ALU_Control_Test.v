`timescale 1ns / 1ps

module ALU_Control_Test;

	// Inputs
	reg [5:0] FuncCode;
	reg [1:0] ALU_Op;

	// Outputs
	wire [3:0] ALU_Ctl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control uut (
		.FuncCode(FuncCode), 
		.ALU_Op(ALU_Op), 
		.ALU_Ctl(ALU_Ctl)
	);

	initial begin
		// Initialize Inputs
		FuncCode = 0;
		ALU_Op = 0;
		#10;								//WAIT 10ns
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to XXXX");
		FuncCode = 6'b100000;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 0010");
		FuncCode = 6'b100010;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 0110");
		FuncCode = 6'b100100;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 0000");
		FuncCode = 6'b100101;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 0001");
		FuncCode = 6'b101010;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 0111");
		FuncCode = 6'b100111;
		ALU_Op = 2'b10;
		#10;	
		$display("Testing the default operation"); //works like printf
		$display("FuncCode = %b	ALU_Op = %b ALU_Ctl = %b", FuncCode, ALU_Op, ALU_Ctl);
		$display("Check if equal to 1100");

		#10;	
        
		// Add stimulus here

	end
      
endmodule

