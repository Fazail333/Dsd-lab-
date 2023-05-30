module dff_1(
  input d1_en,
  input [7:0] d,
  input clk,
  output reg [7:0] q
);

always @(posedge clk) begin
  if (d1_en) begin
    q <= d;
  end
end

endmodule
