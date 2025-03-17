module comparator(input[3:0]a,output reg result);
always@(a)
begin
  if(a==4'b1010)
   result=1;
  else
   result=0;


end
endmodule