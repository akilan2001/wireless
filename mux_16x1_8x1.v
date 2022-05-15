`timescale 1ns / 1ps


module mux_16x1_8x1(
    input [15:0] data_16,
    input  [3:0] select_4,
     output out_16,
    wire op1,op2
    );
    Mux_8_1 one(op1,data_16[7:0],select_4[2:0],select_4[3]);
    Mux_8_1 two(op2,data_16[15:8],select_4[2:0],!select_4[3]);
    or(out_16,op1,op2);
    
    
endmodule
module Mux_8_1(
    out,
   data_8,
 select_3,
  en
    );
    output reg out;
    input [7:0] data_8;
    input [2:0] select_3;
    input en;
    always @(*)
    begin
    
    if(!en)
    begin
    case({select_3[2],select_3[1],select_3[0]})
    3'b000: out=data_8[0];
    3'b001: out=data_8[1];
    3'b010: out=data_8[2];
    3'b011: out=data_8[3];
    3'b100: out=data_8[4];
    3'b101: out=data_8[5];
    3'b110: out=data_8[6];
    3'b111: out=data_8[7];
    default: out=1'bx;
    endcase
    end
    else
    out=0;
    end

    
endmodule



