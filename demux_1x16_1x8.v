`timescale 1ns / 1ps

module demux_1x16_1x8(
    input data_in_16,
    output [15:0] data_out_16,
    input [3:0] select_4,
    wire op1,op2
    );
    demux_2_1 one({op1,op2},data_in_16,select_4[3]);
    demux_8_1 two(data_out_16[15:8],op1,select_4[2:0]);
    demux_8_1 three(data_out_16[7:0],op2,select_4[2:0]);

    
 endmodule
module demux_8_1(

    output reg [7:0]  out,
    input in,
    input [2:0] select_3
    );
    always @(*) 
    begin
    out[7:0]=8'b00000000;
    case({select_3[2],select_3[1],select_3[0]})
    3'b000:out[0]=in;
    3'b001:out[1]=in;
    3'b010:out[2]=in;
    3'b011:out[3]=in;
    3'b100:out[4]=in;
    3'b101:out[5]=in;
    3'b110:out[6]=in;
    3'b111:out[7]=in;
    endcase
    end
endmodule

module demux_2_1(

    output reg [1:0]  out,
    input in,
    input  select
    );
    always @(*) 
    begin
    out[1:0]=2'b00;
    if(select)
    out[1]=in;
    else
    out[0]=in;
    end
endmodule
