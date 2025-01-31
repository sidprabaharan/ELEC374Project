`timescale 1ns/10ps

module ZRegister (
    input [63:0] ALU_Result,
    input Clock,
    input Clear,
    input Zin,
    input Zlowout,
    output [31:0] BusMuxIn,
    output [31:0] Z_High,
    output [31:0] Z_Low
);
    reg [63:0] Data;
    
    assign BusMuxIn = Zlowout ? Data[31:0] : 32'bz;
    assign Z_High = Data[63:32];
    assign Z_Low = Data[31:0];
    
    always @(posedge Clock or posedge Clear) begin
        if (Clear)
            Data <= 64'b0;
        else if (Zin)
            Data <= ALU_Result;
    end
endmodule