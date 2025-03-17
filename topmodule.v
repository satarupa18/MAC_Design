`include "controlpath.v"
`include "datapath.v"
`timescale 1ns/1ps
module topmodule(
    input clk,rst,
    input[3:0]a,b,
    input go,
    output[11:0]out,
    output done
);
wire ld_a,ld_b,ld_m,ld_acc,ld_out,cmp,count_enabel;

datapath data1(
    .clk(clk),.rst(rst),.a(a),.b(b),.ld_a(ld_a),.ld_b(ld_b),.ld_m(ld_m),.ld_acc(ld_acc),.ld_out(ld_out),.count_enabel(count_enabel),.cmp(cmp),.out(out)
);
controlpath con1(.clk(clk),.rst(rst),.go(go),.ld_a(ld_a),.ld_b(ld_b),.ld_m(ld_m),.ld_acc(ld_acc),.ld_out(ld_out),.count_enabel(count_enabel),.cmp(cmp),.done(done)
);

endmodule