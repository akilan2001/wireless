`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 10:26:52
// Design Name: 
// Module Name: bcd_adder_tb
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


module bcd_adder_tb(

    );
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire Cout;
    wire [3:0] Sum;
    
    bcd_adder uut (
            .A(A), 
            .B(B), 
            .Cin(Cin), 
            .Sum(Sum), 
            .Cout(Cout)
        );
        initial 
        begin
        A = 6;  B = 9;  Cin = 0;   #100;
        A = 3;  B = 3;  Cin = 1;   #100;
        A = 4;  B = 5;  Cin = 0;   #100;
        A = 8;  B = 2;  Cin = 0;   #100;
        A = 9;  B = 9;  Cin = 1;   #100;
        end
endmodule

