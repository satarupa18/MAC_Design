module counter(input en,clk,rst,output reg[3:0]count);
always@(posedge clk or posedge rst)
begin
  if(rst==1'b1)
   count<=4'b0000;
  else if(en)
   count<=count+1;

end
endmodule

