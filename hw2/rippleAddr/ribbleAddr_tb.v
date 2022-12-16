`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:55:06 05/07/2021
// Design Name:   RippleAddr
// Module Name:   T:/fucking uni/CAD/hw2/rippleAddr/ribbleAddr_tb.v
// Project Name:  rippleAddr
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RippleAddr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ribbleAddr_tb;

	// Inputs
	reg [3:0] X;
	reg [3:0] Y;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	RippleAddr uut (
		.X(X), 
		.Y(Y), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	
	integer i;
	integer j;

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		cin = 0;
		#10;
		
		for(i = 0; i < 16 ; i = i+1) begin
		 for(j = 0; j < 16 ; j = j+1) begin
			#1;
			if (cin == 1)
				cin = 0;
			else begin
				cin = 1;
			end
			X = i;
			Y = j;
		 end
		end

		// Wait 100 ns for global reset to finish
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

