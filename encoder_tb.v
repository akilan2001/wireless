`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 11:55:34
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(

    );

            reg [7:0] input_data;
            wire [2:0] output_data;
                encoder uut (
                        .input_data(input_data),.output_data(output_data)
                    );
            initial 
            begin
            
           input_data=8'b10000000;
           #100;
           input_data=8'b00100000;
           #100;
           input_data=8'b00000010;
           #100;
           input_data=8'b00001000;
           #100;
           
           
            end
endmodule
