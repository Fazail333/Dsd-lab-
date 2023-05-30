module dataflowpath(input logic [2:0] bit_index,input logic bit_value,input logic valid_in ,
            input logic reset,input logic clk,input logic d1_en,input logic d2_en,input logic d3_en,
            output logic [6:0]segment,output logic [1:0]Anode);

logic [2:0]a;
logic [7:0] d1_out;
logic [7:0] d2_out;
logic [7:0] d3_out;
logic [1:0][3:0] b;
logic [1:0][3:0] hex;
logic [1:0][6:0] seg;
logic clk_100;
logic q;

dff_1 D1(d1_en,8'b00000000,clk,d1_out);
bit_index_decoder bd1(bit_index,a);
dff_2 D2(d2_en,d1_out,clk,bit_value,a,d2_out);
dff_3 D3(d3_en,d2_out,clk,d3_out);

assign b[0] = d3_out[7:4];
assign b[1] = d3_out[3:0];

bin_to_hex b1(b[0],hex[0]);
bin_to_hex b2(b[1],hex[1]);
decoder_segment ds1(hex[0],seg[0]);
decoder_segment ds2(hex[1],seg[1]);



downclk a1(clk, reset,clk_100);
counter c1(clk,reset, q);
mux2to1 m1(q,seg[0],seg[1],segment);

an_dec d1(q,Anode);
            
            
endmodule
