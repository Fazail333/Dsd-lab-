`timescale 1ns / 1ps

module main_tb();
logic clk;
logic reset;
logic [2:0]bit_index;
logic bit_value;
logic valid_in;
logic [6:0] display;
logic [1:0] seg;
main UUT(
        .bit_index(bit_index),
        .bit_value(bit_value),
        .valid_in(valid_in),
        .clk(clk),
        .reset(reset),
        .display(display),
        .seg(seg)

    );
 initial
    begin
        clk = 1'b0;
        forever #1 clk = ~clk;
    end
 
 initial
    begin
        reset = 0;
        @ (posedge clk);
        reset = 1;
        @ (posedge clk);


        bit_index = 3'b000;
        bit_value = 1'b1;
        valid_in = 1'b1;
        repeat(5)@ (posedge clk);
        
        bit_index = 3'b001;
        bit_value = 1'b0;
        valid_in = 1'b1;
        repeat(5)@ (posedge clk);
        
        bit_index = 3'b010;
        bit_value = 1'b1;
        valid_in = 1'b1;
        repeat(5)@ (posedge clk);
        
        bit_index = 3'b011;
        bit_value = 1'b0;
        valid_in = 1'b1;
        repeat(5)@ (posedge clk);
        $finish;
    end 
/*initial begin
    $monitor("%b %b", sel, num);
end
*/
initial begin
    $dumpfile("hell.vcd");
    $dumpvars(main_tb);
end
endmodule

