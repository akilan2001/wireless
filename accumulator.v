`timescale 1ns / 1ps

module accumulator(
input [3:0] x,
input [3:0] a,
input clk,
input S,
output reg [7:0]  c=0,
reg [7:0] b=0
    );


always @(posedge clk) 

begin
c=a+b;
if(S==0)
b=x;
else
b=c;
end
endmodule

//module mux(i0,i1,s,out);
//input i0,i1,s;
//output out;
//assign out= s==1 ? i1:i0;
//endmodule


//module half_adder(
//    input A,
//    input B,
//    output C,
//    output S
//    );
//    assign C=A&B;
//    assign S=A^B;
//endmodule
