`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:24 06/06/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(RESULT, SIG_B, OPCODE, RS_VAL, RT_VAL, SHAMT, FUNC, RAW_VAL);
	
	input [5:0] FUNC, OPCODE;
	input [4:0] SHAMT; // SHAMT
	input [15:0] RAW_VAL;
	input [31:0] RS_VAL, RT_VAL; //inputs
	
	output reg SIG_B;
	output reg [31:0] RESULT; //output
	
	integer i;
	reg signed [31:0] temp, signed_rs, signed_rt; 
	reg [31:0] signExtend, zeroExtend;

	always @ (FUNC, RS_VAL, RT_VAL, SHAMT, RAW_VAL) begin
		
		
		// signed value assigment
		signed_rs = RS_VAL;
		signed_rt = RT_VAL;
			
			
		// R
		if(OPCODE == 6'h0) begin
			
			case(FUNC)
			
				6'b100000 : //add
					RESULT = signed_rs + signed_rt;
					
				6'b100010 : //sub
					RESULT = signed_rs - signed_rt;
					
				6'b100100 : //and
					RESULT = RS_VAL & RT_VAL;
					
				6'b100101 : //or
					RESULT = RS_VAL | RT_VAL;
				
				6'b100110 : //xor
					RESULT = RS_VAL ^ RT_VAL;
					
				6'b000011 : //sra
					begin
						temp = RT_VAL;
						for(i = 0; i < SHAMT; i = i + 1) begin
							temp = {temp[31],temp[31:1]};
						end
					
					RESULT = temp;
					end
					
				6'b000010 : //srl
					RESULT = (RT_VAL >> SHAMT);
			
				6'b000000 : //sll
					RESULT = (RT_VAL << SHAMT);
					
			endcase
			
		end
		
		
		
		// I
		else begin
			
			signExtend = {{16{RAW_VAL[15]}}, RAW_VAL};
			zeroExtend = {{16{1'b0}}, RAW_VAL};
			
			case(OPCODE)
		
				6'b001000 : // addi
					RESULT = signed_rs + signExtend;
					
				6'b010010 : // andi
					RESULT = RS_VAL & zeroExtend;
				
				6'b001110 : // xori
					RESULT = RS_VAL ^ zeroExtend;
				
				6'b000100 : // beq
					begin
						RESULT = signed_rs - signed_rt;
						if(RESULT == 0) begin
							SIG_B = 1'b1;
						end
						else begin
							SIG_B = 1'b0;
						end
					end
				
				6'b000101 : // bne
					begin
						RESULT = signed_rs - signed_rt;
						if(RESULT != 0) begin
							SIG_B = 1'b1;
							RESULT = 1'b0;
						end
						else begin
							SIG_B = 1'b0;
						end
					end
				
				6'b010101 : // lui
					RESULT = {RAW_VAL, {16{1'b0}}};
				
				6'b010011 : // ori
					RESULT = RS_VAL | zeroExtend;
					
				6'b101011 : // sw
					RESULT = signed_rs + signExtend;
				6'b100011 : // lw
					RESULT = signed_rs + signExtend;
					
			endcase
		
		end
		
	end
	
endmodule