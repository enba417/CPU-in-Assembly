`timescale 1ns / 1ps
module ALU_TestPlus;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALUCtl;
	reg [5:0] FuncCode;
	reg [1:0] ALU_Op;

	// Outputs
	wire Zero;
	wire [31:0] Output;
	wire [3:0] ALU_Ctl;

	// Instantiate the Unit Under Test (UUT)
	ALU uut1 (
		.A(A), 
		.B(B), 
		.ALUCtl(ALUCtl), 
		.Zero(Zero), 
		.Output(Output)
	);
	ALU_Control uut2 (
		.FuncCode(FuncCode), 
		.ALU_Op(ALU_Op), 
		.ALU_Ctl(ALU_Ctl)
	);

	initial begin
		// Initialize Inputs to Zero to test Zero Flag
		A = 0;
		B = 0;
		FuncCode = 0;
		ALU_Op = 0;
		ALUCtl = 0;
		// Wait 10 ns for global reset to finish
		#10;
      $display("Zero Flag is being tested"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		A = 32'h00059460;			//low order 8 difits of SID
		B = 2*32'h00059460;
		FuncCode = 6'b100100;
		ALU_Op = 2'b10;
		#10
		ALUCtl = ALU_Ctl;				
		#10;								//WAIT 10ns
		$display("Testing the AND operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		$display("Check if equal to %h",		A&B);
		FuncCode = 6'b100101;
		#10;
		ALUCtl = ALU_Ctl;			
		#10;								//WAIT 10ns
		$display("Testing the OR operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		$display("Check if equal to %h", A|B);
		FuncCode = 6'b100000;
		#10;
		ALUCtl = ALU_Ctl;				
		#10;								//WAIT 10ns
		$display("Testing the ADD operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		$display("Check if equal to %h", A+B);
		FuncCode = 6'b100010;
		#10;
		ALUCtl = ALU_Ctl;				
		#10;									//WAIT 10ns
		$display("Testing the Subtract operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		$display("Check if equal to %h", A-B);
		FuncCode = 6'b101010;
		#10;
		ALUCtl = ALU_Ctl;				
		#10;									//WAIT 10ns
		$display("Testing the Set on Less then operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		FuncCode = 6'b100111;
		#10;
		ALUCtl = ALU_Ctl;			
		#10;									//WAIT 10ns
		$display("Testing the NOR operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		$display("Check if equal to %h", (~(A|B)));
		FuncCode = 6'b000000;
		#10;
		ALUCtl = ALU_Ctl;			
		#10;									//WAIT 10ns
		$display("Testing the default operation"); //works like printf
		$display("Output = %h	Zero = %b", Output, Zero);
		
		#10;
		$stop;
	end
      
endmodule


