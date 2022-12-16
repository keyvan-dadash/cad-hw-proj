`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:01:59 06/07/2021
// Design Name:   ALU
// Module Name:   C:/Users/Rasoul Esmaeili/Documents/xillinx/proj1/ALUTest.v
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

module ALUTest;

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
		
		
		// Testing SUB
		
		// Test1 -> 52 - 4 = 48 : 110000
		OPCODE = 0;
		RS_VAL = 52;
		RT_VAL = 4;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;
		#100;
		
		// Test2 -> 150 - 25 = 125
		OPCODE = 0;
		RS_VAL = 150;
		RT_VAL = 25;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;
		#100;
		
		// Test2 -> 74 - 12 = 62
		OPCODE = 0;
		RS_VAL = 74;
		RT_VAL = 12;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;
		#100;
		
		// Test2 -> 15 - 15 = 0
		OPCODE = 0;
		RS_VAL = 15;
		RT_VAL = 15;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;
		#100;
		
		// Test2 -> 10 - 20 = -10
		OPCODE = 0;
		RS_VAL = 10;
		RT_VAL = 20;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;		
		#100;
		
		// Test2 -> 0 - 7 = -7
		OPCODE = 0;
		RS_VAL = 0;
		RT_VAL = 7;
		SHAMT = 0;
		FUNC = 6'b100010;
		RAW_VAL = 0;
		#100;
		
		// Testing Sub end
		
		// Test 

	end
      
endmodule

