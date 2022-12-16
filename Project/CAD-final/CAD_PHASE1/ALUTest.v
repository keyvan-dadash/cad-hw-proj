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
	reg [5:0] opcode;
	reg [31:0] rs_content;
	reg [31:0] rt_content;
	reg [4:0] shamt;
	reg [5:0] ALU_control;
	reg [15:0] immediate;

	// Outputs
	wire [31:0] ALU_result;
	wire sig_branch;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALU_result(ALU_result), 
		.sig_branch(sig_branch), 
		.opcode(opcode), 
		.rs_content(rs_content), 
		.rt_content(rt_content), 
		.shamt(shamt), 
		.ALU_control(ALU_control), 
		.immediate(immediate)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		rs_content = 0;
		rt_content = 0;
		shamt = 0;
		ALU_control = 0;
		immediate = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		
		// Testing SUB
		
		// Test1 -> 52 - 4 = 48 : 110000
		opcode = 0;
		rs_content = 52;
		rt_content = 4;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;
		#100;
		
		// Test2 -> 150 - 25 = 125
		opcode = 0;
		rs_content = 150;
		rt_content = 25;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;
		#100;
		
		// Test2 -> 74 - 12 = 62
		opcode = 0;
		rs_content = 74;
		rt_content = 12;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;
		#100;
		
		// Test2 -> 15 - 15 = 0
		opcode = 0;
		rs_content = 15;
		rt_content = 15;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;
		#100;
		
		// Test2 -> 10 - 20 = -10
		opcode = 0;
		rs_content = 10;
		rt_content = 20;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;		
		#100;
		
		// Test2 -> 0 - 7 = -7
		opcode = 0;
		rs_content = 0;
		rt_content = 7;
		shamt = 0;
		ALU_control = 6'b100010;
		immediate = 0;
		#100;
		
		// Testing Sub end
		
		// Test 

	end
      
endmodule

