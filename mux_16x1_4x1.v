`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2022 23:31:56
// Design Name: 
// Module Name: mux_16x1_4x1
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


module mux_16x1_4x1(
    input [15:0] data_16,
    input [3:0] select_4,
    output out_16,
    wire op1,op2,op3,op4
    );
    
    Mux_4_1 one(op1,data_16[3:0],select_4[1:0]);    
    Mux_4_1 two(op2,data_16[7:4],select_4[1:0]);    
    Mux_4_1 three(op3,data_16[11:8],select_4[1:0]);    
    Mux_4_1 four(op4,data_16[15:12],select_4[1:0]);    
    Mux_4_1 five(out_16,{op1,op2,op3,op4},select_4[3:2]);    
   
endmodule



 module Mux_4_1(
        out,
       data_4,
     select_2
        );
        output reg out;
        input [3:0] data_4;
        input [1:0] select_2;
        always @(*)
        begin
        
        case({select_2[1],select_2[0]})
        2'b00: out=data_4[0];
        2'b01: out=data_4[1];
        2'b10: out=data_4[2];
        2'b11: out=data_4[3];
        default: out=1'bx;
        endcase
        end
  
    endmodule

