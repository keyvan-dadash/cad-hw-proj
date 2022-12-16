`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:25:22 06/07/2021
// Design Name:   ALU
// Module Name:   C:/Users/Rasoul Esmaeili/Documents/xillinx/proj1/ALUBEQTest.v
// Project Name:  proj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUBEQTest;

	// Inputs
	reg [5:0] OPCODE;
	reg [31:0] RS_VAL;
	reg [31:0] RT_VAL;
	reg [4:0] SHAMT;
	reg [5:0] FUNC;
	reg [15:0] RAW_VAL;

	// Outputs
	wire [31:0] RESULT;
	wire SIG_B;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.RESULT(RESULT), 
		.SIG_B(SIG_B), 
		.OPCODE(OPCODE), 
		.RS_VAL(RS_VAL), 
		.RT_VAL(RT_VAL), 
		.SHAMT(SHAMT), 
		.FUNC(FUNC), 
		.RAW_VAL(RAW_VAL)
	);

	initial begin
		// Initialize Inputs
		OPCODE = 0;
		RS_VAL = 0;
		RT_VAL = 0;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Testing BEQ
		
		OPCODE = 6'b000100;
		RS_VAL = 15;
		RT_VAL = 12;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 0;
		#100;
		
		OPCODE = 6'b000100;
		RS_VAL = 15;
		RT_VAL = 15;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 0;
		#100;

		OPCODE = 6'b000100;
		RS_VAL = 5;
		RT_VAL = 15;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 0;
		#100;
		

	end
      
endmodule

