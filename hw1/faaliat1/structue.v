module q1(
      input first,
      input second,
      input cin,
      output sum,
      output cout
      
    );
   wire x1, x2, x3;
   xor (x1, first, second);
   and (x3, first, second);
   xor (sum, x1, cin);
   and (x2, x1, cin);
   or (cout, x2, x3);
   


endmodule