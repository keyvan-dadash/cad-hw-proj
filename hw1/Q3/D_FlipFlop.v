module D_FlipFlop(
    d, q, qn, e);
	 
	output q;
	output qn;
	input  e;   
	input  d;
	
	
	 wire fir_q;
	 wire fir_qn;
	 
	 D_Latch first(
		.d (d),
		.q (fir_q),
		.qn (fir_qn),
		.e	 (e)
	 );
	 
	 wire sec_q;
	 wire sec_qn;
	 
	 D_Latch second(
		.d (fir_q),
		.q (sec_q),
		.qn (sec_qn),
		.e	 (~e)
	 );
	 
	 assign q = sec_q;
	 assign qn = sec_qn;
	 

endmodule
