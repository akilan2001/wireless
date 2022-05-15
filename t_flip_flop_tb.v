`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 15:03:27
// Design Name: 
// Module Name: t_flip_flop_tb
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


module t_flip_flop_tb();
reg T,Clk;
wire Q,Qbar;
t_flip_flop uut(.T(T),.Clk(Clk),.Q(Q),.Qbar(Qbar));
initial 
begin
Clk=1;
forever #10 Clk=~Clk;
end

initial 
begin 
    T=0;
 #100; T=1;
 #100; T=0;
end 

endmodule
