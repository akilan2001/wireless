`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 09:11:02
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb();
wire [3:0] Out;
reg clk,Mode;
up_down_counter uut(.clk(clk),.Mode(Mode),.Out(Out));
initial 
begin
clk=1;
Mode=1;
forever #10 clk=~clk;
end

initial 
begin
#1000 Mode=0;
#2000 $stop;
end
endmodule
