`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 11:49:55
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] input_data,
    output reg [2:0] output_data,
    integer i
    );
    //8:3 encoder
    always @(*)
    begin
    for(i=0;i<8;i=i+1)
    begin
    if(input_data[i])
    output_data=i;
    end
    
    end
endmodule
