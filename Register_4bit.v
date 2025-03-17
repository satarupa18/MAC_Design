module Register_4bit (input clk,rst,ld,input[3:0]data_in,output reg[3:0]out);
always@(posedge clk or posedge rst)
begin
  if(rst==1'b1)
  out<=1'b0;
  else if(ld==1'b1)
  out<=data_in;

end
endmodule