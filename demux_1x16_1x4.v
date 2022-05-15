`timescale 1ns / 1ps


module demux_1x16_1x4(
    input data_in_16,
    input [3:0] select_4,
    output [15:0] data_out_16,
    wire op1,op2,op3,op4
    );
    demux_4_1 one({op4,op3,op2,op1},data_in_16,select_4[3:2]);
    demux_4_1 two(data_out_16[15:12],op4,select_4[1:0]);    
    demux_4_1 three(data_out_16[11:8],op3,select_4[1:0]);
    demux_4_1 four(data_out_16[7:4],op2,select_4[1:0]);
    demux_4_1 five(data_out_16[3:0],op1,select_4[1:0]);   
endmodule

module demux_4_1(

    output reg [3:0]  out,
    input in,
    input [1:0] select_2
    );
    always @(*) 
    begin
    out[3:0]=4'b0000;
    case({select_2[1],select_2[0]})
    2'b00:out[0]=in;
    2'b01:out[1]=in;
    2'b10:out[2]=in;
    2'b11:out[3]=in;
    endcase
    end
endmodule