`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 11:23:17
// Design Name: 
// Module Name: sr_flip_flop_tb
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


module sr_flip_flop_tb();
reg S,R,Clk;
wire Q,Qbar;
sr_flip_flop uut(.S(S),.R(R),.Clk(Clk),.Q(Q),.Qbar(Qbar));

initial 
begin
Clk=0;
forever #10 Clk=~Clk;
end

initial 
begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
end 

endmodule
