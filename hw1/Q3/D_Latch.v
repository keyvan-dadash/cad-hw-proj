module D_Latch(
	d, q, qn, e
    );
	 
	output q;
   output qn;
   input  e;   
   input  d;

	SR_Latch internal (
    .q   (q),
    .qn   (qn),
    .e (e),
    .s   (d),
	 .r	(~d)
  );

endmodule
