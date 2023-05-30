module t_ff(input t, clk, reset, output logic q);

always_ff @(posedge clk, negedge reset) begin

if (reset == 1'b0)begin
  q <= 1'b0;
  end
else  begin
 if (t) begin
  q <= ~q;
  end
 end
end

endmodule
