`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:21 06/07/2021 
// Design Name: 
// Module Name:    Control_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control_Unit(
	output reg RegRead,
				  RegWrite,
				  MemRead,
				  MemWrite,
				  RegDst,
				  Branch,
	input [5:0] opcode, funct
    );
	
	always @(opcode, funct) begin
	
		MemRead  = 1'b0;
		MemWrite = 1'b0;
		RegWrite = 1'b0;
		RegRead  = 1'b0;
		RegDst   = 1'b0;
		Branch   = 1'b0;
		
		// R type
		if(opcode == 6'b0) begin
			RegDst = 1'b1;
			RegRead = 1'b1;


			if(funct != 6'b1000) begin
				RegWrite = 1'b1;
			end
		end

		if(opcode != 6'b010101) begin
			RegRead = 1'b1;
		end
		if(opcode != 6'b0 & opcode != 6'b100 & opcode != 6'b101 & opcode != 6'b101000 & opcode != 6'b101001 & opcode != 6'b101011) begin
			RegWrite = 1'b1;
			RegDst   = 1'b0;
		end
		if(opcode == 6'b100 | opcode == 6'b101) begin
			Branch   = 1'b1;
		end
		if(opcode != 6'b0 & (opcode == 6'b101000 | opcode == 6'b101001 | opcode == 6'b101011)) begin
			MemWrite = 1'b1;
			RegRead  = 1'b1;
		end
		if(opcode != 6'b0 & (opcode == 6'b100011))begin
			MemRead = 1'b1;
		end
	end
	
	
	
endmodule
	