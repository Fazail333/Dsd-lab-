module main(input logic [2:0] bit_index,input logic bit_value,input logic valid_in ,
            input logic reset,input logic clk,
            output logic [6:0]display,output logic [1:0]seg);
 logic d1_en;
 logic d2_en;
 logic d3_en;
 
 controller c1(clk,reset,valid_in,d1_en,d2_en,d3_en);
 dataflowpath l1(bit_index,bit_value,valid_in,reset,clk,d1_en,d2_en,d3_en,display,seg);
 
 
endmodule
