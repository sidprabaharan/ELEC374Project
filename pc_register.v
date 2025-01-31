`timescale 1ns/10ps

module PCRegister (
    input [31:0] BusMuxOut,
    input Clock,
    input Clear,
    input PCin,
    input PCout,
    input IncPC,
    output [31:0] BusMuxIn
);
    reg [31:0] Data;
    
    
    assign BusMuxIn = PCout ? Data : 32'bz;
    
    
    always @(posedge Clock or posedge Clear) begin
        if (Clear)
            Data <= 32'b0;
        else if (PCin)
            Data <= BusMuxOut;
        else if (IncPC)
            Data <= Data + 1;
    end
endmodule