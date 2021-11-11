
‘timescale 1ns / 1ps
module latch_dataflow(
    input d,
    output q,
    input clk
);
wire S;
wire R;
wire qb;
assign #1 S=∼d&clk;
assign #1 R=d&clk;
assign #2 qb=∼(R|q);
assign #2 q=∼(S|qb);
