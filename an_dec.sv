module an_dec(input logic sel,output logic [1:0] Anode);
    always_comb begin
        case (sel)
            1'b0 : Anode <= 8'b01111111;
            1'b1 : Anode <= 8'b10111111;

         endcase
     end    
 endmodule


