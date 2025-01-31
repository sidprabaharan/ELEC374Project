`timescale 1ns/10ps

module GeneralRegister (
    input [31:0] BusMuxOut,
    input Clock,
    input Clear,
    input Rin,
    input Rout,
    output [31:0] BusMuxIn
);
    reg [31:0] Data;
    
    
    assign BusMuxIn = Rout ? Data : 32'bz;
    
    
    always @(posedge Clock or posedge Clear) begin
        if (Clear)
            Data <= 32'b0;
        else if (Rin)
            Data <= BusMuxOut;
    end
endmodule