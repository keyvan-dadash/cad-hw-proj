module dataflow_fulladder(
    input first,
	 input second,
	 input cin,
	 output sum,
	 output cout);
	 
	 assign cout = (second & first) | cin & (first ^ second);
	 assign sum = second^first^cin;

endmodule
