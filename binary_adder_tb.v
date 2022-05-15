`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 11:03:42
// Design Name: 
// Module Name: binary_adder_tb
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


module binary_adder_tb(

    );
    reg [3:0] A;
        reg [3:0] B;
        reg Cin;
        wire Cout;
        wire [3:0] Sum;
        
        binary_adder uut (
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
            A = 9;  B = 7;  Cin = 0;   #100;
            A = 11;  B = 12;  Cin = 1;   #100;
            end
endmodule
