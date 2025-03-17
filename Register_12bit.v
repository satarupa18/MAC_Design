module Register_12bit (input clk,rst,ld,input[11:0]data_in,output reg[11:0]out);
always@(posedge clk or posedge rst)
begin
  if(rst==1'b1)
  out<=1'b0;
  else if(ld==1'b1)
  out<=data_in;

end
endmodule