module Register(
	 clock, 
	 WriteRegister, 
	 ReadRegister1, 
	 ReadRegister2, 
	 WriteReg, 
	 WriteData, 
	 ReadData1, 
	 ReadData2);
	
	input clock;
	
	input WriteRegister;
	input [31:0] WriteData;
	input [4:0] WriteReg;
	
	output [31:0] ReadData1, ReadData2;
	input [4:0] ReadRegister1, ReadRegister2;
	
	reg [31:0] regis [0:31];
	
	always @(posedge clock) begin
		if (WriteRegister == 1)
			regis[WriteReg] = WriteData;
	end

	assign ReadData1 = regis[ReadRegister1];
	assign ReadData2 = regis[ReadRegister2];	
endmodule