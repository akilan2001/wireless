`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2022 09:00:43
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input Mode,
    output reg [3:0] Out=0
    );
    
    
    always @(posedge clk)
    begin
    if(Mode==1)
    begin
    Out=Out+1;
    #1000000000;
    end
    else
    begin
    Out=Out-1;
    #1000000000;
    end
    end
endmodule
