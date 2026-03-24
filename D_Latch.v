module D_Latch(
    input E,
    input D,
    output reg Q,
    output NotQ
    );
    
    always @(E, D) begin
        if (E)
            Q <= D;
        end
      
        assign  NotQ = ~Q;
endmodule
