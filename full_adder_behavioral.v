`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2022 14:42:15
// Design Name: 
// Module Name: full_adder_behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_behavioral(
    input A,
    input B,
    input Cin,
    output reg S,
    output reg Cout
    );
    always @(*)
    begin
    S=A^B^Cin;
    Cout=(A&B)|(A&Cin)|(B&Cin);
    end
endmodule
