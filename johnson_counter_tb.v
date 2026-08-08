`timescale 1ns/1ps

module johnson_counter_tb;

reg clk;
reg rst;
wire [3:0] q;

johnson_counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("waveform.vcd");
    $dumpvars(0,johnson_counter_tb);

    clk = 0;
    rst = 1;

    #10 rst = 0;

    #80;

    $finish;

end

initial begin
    $monitor("Time=%0t Counter=%b", $time, q);
end

endmodule
