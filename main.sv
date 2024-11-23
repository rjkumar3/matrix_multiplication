`timescale 1ns / 1ps // declaring timescale
module mat_mult(A, B, Res);
 //input and output ports.
 //The size 32 bits which is 3*3=9 elements, each of which is 8 bits wide. 
 input [71:0] A;
 input [71:0] B;
 output [71:0] Res;
 //internal variables 
 reg [71:0] Res;
 reg [7:0] A1 [0:2][0:2];
 reg [7:0] B1 [0:2][0:2];
 reg [7:0] Res1 [0:2][0:2]; 
 integer i, j, k;
 always @ (A or B) begin
 //Initialize the matrices - convert 1D to 3D arrays
 {A1[0][0], A1[0][1], A1[0][2], A1[1][0], A1[1][1], A1[1][2], A1[2][0], 
A1[2][1], A1[2][2]} = A;
 {B1[0][0], B1[0][1], B1[0][2], B1[1][0], B1[1][1], B1[1][2], B1[2][0], 
B1[2][1], B1[2][2]} = B;
 //Matrix multiplication
 for (i = 0; i < 3; i = i + 1) begin
 for (j = 0; j < 3; j = j + 1) begin
 Res1[i][j] = 0;
 for (k = 0; k < 3; k = k + 1) begin
 Res1[i][j] = Res1[i][j] + (A1[i][k] * B1[k][j]);
 end
 end
 end
 //Final Resput assignment - 3D array to 1D array conversion. 
 Res = {Res1[0][0], Res1[0][1], Res1[0][2], Res1[1][0], Res1[1][1], 
Res1[1][2], Res1[2][0], Res1[2][1], Res1[2][2]}; 
 end 
endmodule
// c
