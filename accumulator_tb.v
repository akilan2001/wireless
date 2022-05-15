`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 11:34:34
// Design Name: 
// Module Name: accumulator_tb
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


module accumulator_tb(

    );
    wire [7:0] c;
    reg clk,S;
    reg [3:0] x;
    reg [3:0] a;
    
    accumulator uut(.clk(clk),.S(S),.x(x),.a(a),.c(c));
    
    initial 
    begin
    clk=1;
    a=4'b0010;
    x=4'b1000;
    forever #10 clk=~clk;
    end
    
    initial 
    begin
    S=1;    
    #100;
    S=0;
    end
    
    
    
endmodule
