`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 10:15:41
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output reg Cout,
    output reg [3:0] Sum,
    reg [4:0] sum_temp 
    );
    
    always @(*)
    begin
    sum_temp=A+B+Cin;
    if(sum_temp>9)
    begin
    sum_temp=sum_temp+4'b0110;
    Sum=sum_temp[3:0];
    Cout=1;
    end
    else
    begin
    Cout=0;
    Sum=sum_temp[3:0];
    Cout=0;
    end
    
    end
    
    
endmodule
