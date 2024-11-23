`timescale 1ns / 1ps
module mat_mult2_tb;
 // Declare the inputs and outputs without bit ranges
 reg [71:0] A;
 reg [71:0] B;
 wire [71:0] Res;
 // Instantiate the design under test
 mat_mult uut(.A(A), .B(B), .Res(Res));
 initial begin
 // Set the input values
 A = {8'd1, 8'd1, 8'd2, 8'd2, 8'd3, 8'd3, 8'd4, 8'd4, 8'd5};
 B = {8'd9, 8'd8, 8'd7, 8'd6, 8'd5, 8'd4, 8'd3, 8'd2, 8'd1};
 // Wait for the output to stabilize
 #1;
 // Print the input and output matrices
 $display("A = \n%d %d %d\n%d %d %d\n%d %d %d", A[71:64], 
A[63:56], A[55:48], A[47:40], A[39:32], A[31:24], A[23:16], A[15:8], 
A[7:0]);
 $display("B = \n%d %d %d\n%d %d %d\n%d %d %d", B[71:64], 
B[63:56], B[55:48], B[47:40], B[39:32], B[31:24], B[23:16], B[15:8], 
B[7:0]);
 $display("Res = \n%d %d %d\n%d %d %d\n%d %d %d", Res[71:64], 
Res[63:56], Res[55:48], Res[47:40], Res[39:32], Res[31:24], Res[23:16], 
Res[15:8], Res[7:0]);
 end
 initial
 begin
 $vcdpluson;
 end
endmodule // end of the code
