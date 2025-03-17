`include "adder.v"
`include "comparator.v"
`include "multiplier.v"
`include "counter.v"
`include "Register_4bit.v"
`include "Register_12bit.v"


module datapath (clk,rst,a,b,ld_a,ld_b,ld_m,ld_acc,ld_out,count_enabel,cmp,out,tacc,count_out);
input[3:0]a,b;
input clk,rst,ld_a,ld_b,ld_m,ld_acc,ld_out,count_enabel;
output cmp;
output[11:0]out,tacc;
wire [3:0]ta,tb;
wire [11:0]tmin,tmout,tadd;
output[3:0]count_out;

multiplier multi1(ta,tb,tmin);
adder add1(tmout,tacc,tadd);
counter count1(clk,rst,count_enabel,count_out);
comparator comp1(count_out,cmp);
Register_4bit ra(clk,rst,ld_a,a,ta);
Register_4bit rb(clk,rst,ld_b,b,tb);
Register_12bit rm(clk,rst,ld_m,tmin,tmout);
Register_12bit racc(clk,rst,ld_acc,tadd,tacc);
Register_12bit rout(clk,rst,ld_out,tacc,out);

endmodule