`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:27 05/07/2021 
// Design Name: 
// Module Name:    RippleAddr 
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
module RippleAddr(
    X, Y, cin, sum, cout);
input   [3:0] X;
input   [3:0] Y;
input 	cin;
output 	cout;
output	[3:0] sum;

wire c1, c2, c3;
dataflow_fulladder f1(X[0], Y[0], cin, sum[0], c1);
dataflow_fulladder f2(X[1], Y[1], c1, sum[1], c2);
dataflow_fulladder f3(X[2], Y[2], c2, sum[2], c3);
dataflow_fulladder f4(X[3], Y[3], c3, sum[3], cout);
endmodule

module dataflow_fulladder(
    input first,
	 input second,
	 input cin,
	 output sum,
	 output cout);
	 
	 assign cout = (second & first) | cin & (first ^ second);
	 assign sum = second^first^cin;

endmodule
