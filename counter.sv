module counter (
  input clk,
  input reset,
  output reg q
);

always @(posedge clk or posedge reset) begin
  if (reset) begin
    q <= 1'b0;
  end
  else begin
    q <= q + 1'b1;
  end
end

endmodule
