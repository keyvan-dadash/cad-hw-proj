`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:35 06/07/2021
// Design Name:   ALU
// Module Name:   C:/Users/Rasoul Esmaeili/Documents/xillinx/proj1/ALUORITest.v
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

module ALUORITest;

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

		// 1001 | 1001 = 1001
		OPCODE = 6'b010011;
		RS_VAL = 32'b1001;
		RT_VAL = 0;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 16'b1001;
		#100;
		
		// 1110 | 1111 = 1111
		OPCODE = 6'b010011;
		RS_VAL = 32'b1110;
		RT_VAL = 0;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 16'b1111;
		#100;
		
		// 0001 | 1000 = 1001
		OPCODE = 6'b010011;
		RS_VAL = 32'b0001;
		RT_VAL = 0;
		SHAMT = 0;
		FUNC = 0;
		RAW_VAL = 16'b1000;
		#100;
		
	end
      
endmodule

