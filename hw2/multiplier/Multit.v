`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:26 05/07/2021
// Design Name:   Multi8
// Module Name:   T:/fucking uni/CAD/hw2/multiplier/Multit.v
// Project Name:  multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multi8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multit;

	`define CYCLE 100;

	// Inputs
	reg [7:0] X;
	reg [7:0] Y;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	Multi8 uut (
		.out(out), 
		.X(X), 
		.Y(Y)
	);
	
	integer i;
	integer j;
	parameter len = 8;

	initial begin
		for(i = 0; i < 1<<(len) ; i = i+1) begin
		 for(j = 0; j < 1<<(len) ; j = j+1) begin
			#1;
			X = i;
			Y = j;
			
		 
		 end
		end
			
		 
	  #10 $stop;
        
		// Add stimulus here

	end
      
endmodule

