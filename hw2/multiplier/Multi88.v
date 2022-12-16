`timescale 1ns / 1ps
module Multi8 (out, X, Y);

input   [7:0] X;
input   [7:0] Y;
output 	[15:0] out;
wire [7:0]res[3:0];

Multi4 low(
    .out(res[0]),
    .X(X[3:0]),
    .Y(Y[3:0])
);
Multi4 first_mid(
    .out(res[1]),
    .X(X[7:4]),
    .Y(Y[3:0])
);
Multi4 second_mid(
    .out(res[2]),
    .X(X[3:0]),
    .Y(Y[7:4])
);
Multi4 high(
    .out(res[3]),
    .X(X[7:4]),
    .Y(Y[7:4])
);
assign out = {8'd0,res[0]} + {4'd0,res[1],4'd0} + {4'd0,res[2],4'd0} + {res[3],8'd0};
endmodule

module Multi4(out, X, Y);
input   [3:0] X;
input   [3:0] Y;
output 	[7:0] out;
wire [3:0] S1, S2, S3;
wire [3:0] C1, C2, C3;
Adder x0y1 ((X[0]&Y[1]),(X[1]&Y[0]),1'b0 ,S1[0],C1[0]);
Adder x1y1 ((X[1]&Y[1]),(X[2]&Y[0]),C1[0],S1[1],C1[1]);
Adder x2y1 ((X[2]&Y[1]),(X[3]&Y[0]),C1[1],S1[2],C1[2]);
Adder x3y1 ((X[3]&Y[1]),1'b0,C1[2],S1[3],C1[3]);
Adder x0y2 ((X[0]&Y[2]),S1[1],1'b0,S2[0],C2[0]);
Adder x1y2 ((X[1]&Y[2]),S1[2],C2[0],S2[1],C2[1]);
Adder x2y2 ((X[2]&Y[2]),S1[3],C2[1],S2[2],C2[2]);
Adder x3y2 ((X[3]&Y[2]),C1[3],C2[2],S2[3],C2[3]);
Adder x0y3 ((X[0]&Y[3]),S2[1],1'b0,S3[0],C3[0]);
Adder x1y3 ((X[1]&Y[3]),S2[2],C3[0],S3[1],C3[1]);
Adder x2y3 ((X[2]&Y[3]),S2[3],C3[1],S3[2],C3[2]);
Adder x3y3 ((X[3]&Y[3]),C2[3],C3[2],S3[3],C3[3]);
assign out[0] = X[0]&Y[0];
assign out[1] = S1[0];
assign out[2] = S2[0];
assign out[3] = S3[0];
assign out[4] = S3[1];
assign out[5] = S3[2];
assign out[6] = S3[3];
assign out[7] = C3[3];
endmodule

module Adder(
    input       A,
    input       B,
    input       cin,
    output      sum,
    output      cout      
);
wire [1:0] res;
assign res   = (A + B + cin);
assign sum      = res[0];
assign cout    = res[1];

endmodule
