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
	output reg RG_READ,
	RG_WRITE,
	M_READ,
	M_WRITE,
	RG_DST,
	BRANCH,
	input [5:0] OPCODE,
	FUNCT
    );
	
	always @(OPCODE, FUNCT) begin
	
		M_READ  = 1'b0;
		M_WRITE = 1'b0;
		RG_WRITE = 1'b0;
		RG_READ  = 1'b0;
		RG_DST   = 1'b0;
		BRANCH   = 1'b0;
		
		// R type
		if(OPCODE == 6'b0) begin
			RG_DST = 1'b1;
			RG_READ = 1'b1;

			if(FUNCT != 6'b1000) begin
				RG_WRITE = 1'b1;
			end
		end

		if(OPCODE != 6'b010101) begin
			RG_READ = 1'b1;
		end
		if(OPCODE != 6'b0 & OPCODE != 6'b100 & OPCODE != 6'b101 & OPCODE != 6'b101000 & OPCODE != 6'b101001 & OPCODE != 6'b101011) begin
			RG_WRITE = 1'b1;
			RG_DST   = 1'b0;
		end
		if(OPCODE == 6'b100 | OPCODE == 6'b101) begin
			BRANCH   = 1'b1;
		end
		if(OPCODE != 6'b0 & (OPCODE == 6'b101000 | OPCODE == 6'b101001 | OPCODE == 6'b101011)) begin
			M_WRITE = 1'b1;
			RG_READ  = 1'b1;
		end
		if(OPCODE != 6'b0 & (OPCODE == 6'b100011))begin
			M_READ = 1'b1;
		end
	end
	
	
	
endmodule
	