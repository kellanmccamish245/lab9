module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
   
    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    
    wire [7:0] data_byte [3:0];
    wire [3:0] store_byte;
    wire [7:0] byte_memory [3:0];

    // 1. Demultiplex data -> selected byte
    assign data_byte[0] = (addr == 2'b00) ? data : 0;
    assign data_byte[1] = (addr == 2'b01) ? data : 0;
    assign data_byte[2] = (addr == 2'b10)? data : 0;
    assign data_byte[3] = (addr == 2'b11 )? data : 0;
    
    // 2. Demultiplex store -> selected byte
    assign store_byte[0] = (addr == 2'b00) ? store : 0;
    assign store_byte[1] = (addr == 2'b01)? store : 0;
    assign store_byte[2] = (addr == 2'b10) ? store : 0;
    assign store_byte[3] = (addr == 2'b11) ? store : 0;
    
    // and one multiplexer:
    // 1. Multiplex selected byte -> memory  
     genvar i; 
       generate 
        for (i = 0; i < 4; i = i + 1) begin 
            byte inst( 
                .data(data_byte[i]), 
                .store(store_byte[i]),
                .memory(byte_memory[i])
            );
        end
    endgenerate
    
    //assign memory = byte_memory[addr] 
//    reg [7:0] reg_memory; 
//    assign memory = reg_memory;
      
    always @(*) begin 
        case(addr)
            2'b00: memory = byte_memory[0];
            2'b01: memory = byte_memory[1];
            2'b10: memory = byte_memory[2];
            2'b11: memory = byte_memory[3];
        endcase
    end

endmodule