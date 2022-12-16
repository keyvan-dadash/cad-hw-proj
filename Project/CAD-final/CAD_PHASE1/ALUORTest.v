`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:55:32 06/07/2021
// Design Name:   ALU
// Module Name:   C:/Users/Rasoul Esmaeili/Documents/xillinx/proj1/ALUORTest.v
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

module ALUORTest;

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
        
		// 101 | 010 = 111
		opcode = 0;
		rs_content = 32'b101;
		rt_content = 32'b010;
		shamt = 0;
		ALU_control = 6'b100101;
		immediate = 0;
		#100;
		
		// 11111 | 11111 = 11111
		opcode = 0;
		rs_content = 32'b11111;
		rt_content = 32'b11111;
		shamt = 0;
		ALU_control = 6'b100101;
		immediate = 0;
		#100;

		// 1001 | 1011 = 1011
		opcode = 0;
		rs_content = 32'b1001;
		rt_content = 32'b1011;
		shamt = 0;
		ALU_control = 6'b100101;
		immediate = 0;
		#100;
		

	end
      
endmodule

