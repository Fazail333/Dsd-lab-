module dff_2(
  input d2_en,
  input [7:0] d,
  input clk,
  input bit_value,
  input [2:0]a,
  output reg [7:0] q
);
logic [7:0] data_in_reg;

always @(posedge clk) begin
  if (d2_en) begin
  data_in_reg<=d;
  data_in_reg[a] <= bit_value;
  q<= data_in_reg;
  end
end

endmodule

