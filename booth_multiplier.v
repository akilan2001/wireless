`timescale 1ns / 1ps


module booth_multiplier(
    input [3:0] Md,
    input [3:0] Mr,
    output reg [7:0] Out,
    reg [3:0] acc,
    reg [8:0] temp,
    reg [3:0] Multiplier,
    integer count,
    reg Qn_1,
    reg Qn,
    reg temp_eight
    );
    always @(*)
    begin
    Multiplier=Mr;
    Qn_1=1'b0;
    acc=4'b0000;
    for(count=0;count<4;count=count+1)
        begin
        Qn=Multiplier[0];
        case( {Qn,Qn_1} )
        2'b10:acc=acc-Md;
        2'b01:acc=acc+Md;
        endcase
        $display("%b",acc);
        temp={acc,Multiplier,Qn_1};
        temp_eight=temp[8];
        temp=temp>>1;
        temp[8]=temp_eight;
        Qn_1=temp[0];
        acc=temp[8:5];
        Multiplier=temp[4:1];
        $display("%b,%b,%b",acc,Multiplier,Qn_1);
        end
    Out={acc,Multiplier};
    end
endmodule
