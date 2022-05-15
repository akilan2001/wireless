`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2022 09:09:48
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [3:0] A,
    input [3:0] B,
    output reg Less,
    output reg Equal,
    output reg Greater
    );
    always @(*)
    begin
    if(A<B)
    begin
    Less=1;
    Equal=0;
    Greater=0;
    end
    
    else if(A==B)
    begin
    Less=0;
    Equal=1;
    Greater=0;
    end
    
    else
    begin
    Less=0;
    Equal=0;
    Greater=1;
    end
    end
    
endmodule
