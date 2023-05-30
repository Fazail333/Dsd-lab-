`timescale 1ns / 1ps
module downclk(input logic clk, reset, output logic clk_100);

logic q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16;

t_ff c1(.t(1'b1), .clk(clk), .reset(reset), .q(q1));
t_ff c2(.t(1'b1), .clk(q1), .reset(reset), .q(q2));
t_ff c3(.t(1'b1), .clk(q2), .reset(reset), .q(q3));
t_ff c4(.t(1'b1), .clk(q3), .reset(reset), .q(q4));
t_ff c5(.t(1'b1), .clk(q4), .reset(reset), .q(q5));
t_ff c6(.t(1'b1), .clk(q5), .reset(reset), .q(q6));
t_ff c7(.t(1'b1), .clk(q6), .reset(reset), .q(q7));
t_ff c8(.t(1'b1), .clk(q7), .reset(reset), .q(q8));
t_ff c9(.t(1'b1), .clk(q8), .reset(reset), .q(q9));
t_ff c10(.t(1'b1), .clk(q9), .reset(reset), .q(q10));
t_ff c11(.t(1'b1), .clk(q10), .reset(reset), .q(q11));
t_ff c12(.t(1'b1), .clk(q11), .reset(reset), .q(q12));
t_ff c13(.t(1'b1), .clk(q12), .reset(reset), .q(q13));
t_ff c14(.t(1'b1), .clk(q13), .reset(reset), .q(q14));
t_ff c15(.t(1'b1), .clk(q14), .reset(reset), .q(q15));
t_ff c16(.t(1'b1), .clk(q15), .reset(reset), .q(q16));
t_ff c17(.t(1'b1), .clk(q16), .reset(reset), .q(clk_100));


endmodule