`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 11:07:52
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(
    input S,
    input R,
    input Clk,
    output reg Q,
    output reg Qbar
    );
    always @(posedge Clk)
    begin
    if(S==1)
    begin
    Q <=1;
    Qbar <= 0;
    end
    else if(R==1)
    begin
    Q <=0;
    Qbar <= 1;
    end
    else if(S==0 & R==0)
    begin
    Q <=Q;
    Qbar <= Qbar;
    end
    
    end
 
endmodule
