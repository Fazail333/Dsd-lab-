module dff_3(
  input d3_en,
  input [7:0] d,
  input clk,
  output reg [7:0] q
);

always @(posedge clk) begin
  if (d3_en) begin
    q <= d;
  end
end

endmodule
