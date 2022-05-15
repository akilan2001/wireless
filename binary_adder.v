`timescale 1ns / 1ps


module binary_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout,
   
    );
    wire [3:0] c_out_wire;
    full_adder f1(Sum[0],c_out_wire[1],A[0],B[0],Cin);
    full_adder f2(Sum[1],c_out_wire[2],A[1],B[1],c_out_wire[1]);
    full_adder f3(Sum[2],c_out_wire[3],A[2],B[2],c_out_wire[2]);
    full_adder f4(Sum[3],c_out_wire[4],A[3],B[3],c_out_wire[3]);

endmodule

module full_adder(

    output S,
    output Cout,
    input A,
    input B,
    input Cin
    );

    assign S=A^B^Cin;
    assign Cout=(A&B)|(A&Cin)|(B&Cin);

endmodule
