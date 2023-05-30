module mux2to1(
  input sel,
  input [6:0] seg0,
  input [6:0] seg1,
  output reg [6:0] out
);

always @* begin
  if (sel == 1'b0) begin
    out = seg0;
  end
  else begin
    out = seg1;
  end
end

endmodule

