`timescale 1ns / 1ps

module fpa(
    input [13:0] in,
    output reg [31:0] out ,
    reg [7:0] integer_part,reg [4:0] decimal_part,
    reg [7:0] E=8'b00000000,
 reg size_integer=8,size_decimal=5,
 reg [22:0] mantissa,reg mantissa_size,count,i,j
    );
    
    always @(*)
    begin
    integer_part=in[12:5];
    decimal_part=in[4:0];
    
    i=size_integer-1;
    while(integer_part[i]==0)
    begin
        i=i-1;
    end
    
    j=0;
    while(decimal_part[j]==0)
    begin
    j=j+1;
    end
    
    E=127+i;
    out[30:23]=E;
    
    mantissa_size=i+size_decimal-j;
    for(count=0;count<size_decimal-j;count=count+1)
    mantissa[count]=decimal_part[count+j];
    for(count=size_decimal-j;count<size_decimal-j+i;count=count+1)
    mantissa[count]=integer_part[count-(size_decimal-j)];
    mantissa=mantissa << (23-mantissa_size);
    out[22:0]=mantissa;
    
    if(in[13]==0)
    out[31]=0;
    else
    out[31]=1;
    end
    
endmodule
