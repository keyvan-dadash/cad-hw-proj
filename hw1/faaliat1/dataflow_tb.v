`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:21 04/27/2021
// Design Name:   dataflow
// Module Name:   T:/fucking uni/CAD/hw1/faaliat1/dataflow_tb.v
// Project Name:  faaliat1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dataflow
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dataflow_tb;

	// Inputs
	reg first;
	reg second;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	dataflow_fulladder uut (
		.first(first), 
		.second(second), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		first = 0;
		second = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		first = 0;
		second = 0;
		cin = 0;
		#10;
		first = 0;
		second = 0;
		cin = 1;
		#10;  
		first = 0;
		second = 1;
		cin = 0;
		#10;
		first = 0;
		second = 1;
		cin = 1;
		#10;
		first = 1;
		second = 0;
		cin = 0;
		#10;
		first = 1;
		second = 0;
		cin = 1;
		#10;
		first = 1;
		second = 1;
		cin = 0;
		#10;  
		first = 1;
		second = 1;
		cin = 1;
		#10;  

	end
      
endmodule

