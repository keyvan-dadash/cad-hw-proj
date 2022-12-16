

module SR_Latch(q, qn, s, r, e);
   output reg q;
   output reg qn;
   input  e;   
   input  s;
   input  r;

   wire   s1;
   wire   r1;
	
	always @(s, r, e, q, qn)
      if(e) begin
			q  <= (~r & q) | s;
         qn <= (~s & q) | r;
		end
endmodule