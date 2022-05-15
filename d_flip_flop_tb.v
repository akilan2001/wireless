`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 14:30:28
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb();
reg D,Clk;
wire Q,Qbar;
d_flip_flop uut(.D(D),.Clk(Clk),.Q(Q),.Qbar(Qbar));

initial 
begin
Clk=1;
forever #10 Clk=~Clk;
end

initial 
begin 
 D= 1;
 #100; D= 0;
 #100; D= 1;
 #100; D= 0; 
end 

endmodule
