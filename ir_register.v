`timescale 1ns/10ps

module IRRegister (
    input [31:0] BusMuxOut,
    input Clock,
    input Clear,
    input IRin,
    output [31:0] IR_Out
);
    reg [31:0] Data;
    
    assign IR_Out = Data;
    
    always @(posedge Clock or posedge Clear) begin
        if (Clear)
            Data <= 32'b0;
        else if (IRin)
            Data <= BusMuxOut;
    end
endmodule