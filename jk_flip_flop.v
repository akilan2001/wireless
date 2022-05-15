`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 14:41:07
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(
    input J,
    input K,
    input Clk,
    output reg Q,
    output reg Qbar
    );
    always @(posedge Clk)
        begin
        if(J==1)
        begin
        Q <=1;
        Qbar <= 0;
        end
        else if(K==1)
        begin
        Q <=0;
        Qbar <= 1;
        end
        else if(J==0 & K==0)
        begin
        Q <=Q;
        Qbar <= Qbar;
        end
        
        else
        begin
        Q<=~Q;
        Qbar<=~Qbar;
        end
        end
endmodule
