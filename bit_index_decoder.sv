module bit_index_decoder(
    input logic [2:0] bit_index,
    output logic [2:0] bit_index_int
);
    always_comb begin
        case (bit_index) 
            3'b000 : bit_index_int = 3'd0;
            3'b001 : bit_index_int = 3'd1;
            3'b010 : bit_index_int = 3'd2;
            3'b011 : bit_index_int = 3'd3;
            3'b100 : bit_index_int = 3'd4;
            3'b101 : bit_index_int = 3'd5;
            3'b110 : bit_index_int = 3'd6;
            3'b111 : bit_index_int = 3'd7;
        endcase
    end
endmodule