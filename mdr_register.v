`timescale 1ns/10ps

module MDRRegister (
    input [31:0] BusMuxOut,
    input [31:0] Mdatain,
    input Clock,
    input Clear,
    input MDRin,
    input MDRout,
    input Read,
    output [31:0] BusMuxIn,
    output [31:0] MDR_Out
);
    reg [31:0] Data;
    
    assign BusMuxIn = MDRout ? Data : 32'bz;
    assign MDR_Out = Data;
    
    always @(posedge Clock or posedge Clear) begin
        if (Clear)
            Data <= 32'b0;
        else if (MDRin)
            Data <= Read ? Mdatain : BusMuxOut;
    end
endmodule