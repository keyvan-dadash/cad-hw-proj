`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:44:26 04/27/2021
// Design Name:   q1
// Module Name:   D:/CAD/ta/session2/gate_level_tb.v
// Project Name:  session2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: q1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module str_tb;

  // Inputs
  reg first;
  reg second;
  reg cin;

  // Outputs
  wire sum;
  wire cout;

  // Instantiate the Unit Under Test (UUT)
  q1 uut (
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