`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:00:28 06/08/2021
// Design Name:   Register
// Module Name:   T:/fucking uni/CAD/Project/CAD_LAB1_SADRAKHAMOSHI_97521261_AMIRESMAIELI_97521072_KEYVANDADASHZADE97522148/CAD_PHASE1/REGTest.v
// Project Name:  CAD_PHASE1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module REGTest;

	// Inputs
	reg clock;
	reg WriteRegister;
	reg [4:0] ReadRegister1;
	reg [4:0] ReadRegister2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.clock(clock), 
		.WriteRegister(WriteRegister), 
		.ReadRegister1(ReadRegister1), 
		.ReadRegister2(ReadRegister2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);
	
	always
  begin
    #5 clock = 1;
    #5 clock = 0;
  end

	initial begin
		// Initialize Inputs
		clock = 0;
		WriteRegister = 0;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteReg = 0;
		WriteData = 0;

		// Wait 100 ns for global reset to finis		
		#100;
		
		WriteRegister = 1;
		WriteReg = 5'b00111;
		WriteData = 32'b000001010000111100000100100000;
		#10;
		
		WriteRegister = 0;
		ReadRegister1 = 5'b00111;
		ReadRegister2 = 0;
		#15;
		
		
		WriteRegister = 1;
		WriteReg = 5'b10101;
		WriteData = 32'b001101010000111100000100100111;
		#20;
		
		WriteRegister = 0;
		ReadRegister1 = 0;
		ReadRegister2 = 5'b10101;
		#25;
		
		
		
		WriteRegister = 1;
		WriteReg = 5'b10001;
		WriteData = 32'b001001010000111101000100100000;
		#30;
		
		WriteRegister = 0;
		ReadRegister1 = 5'b10101;
		ReadRegister2 = 5'b10001;
		#40;
        
		// Add stimulus here

	end
      
endmodule

