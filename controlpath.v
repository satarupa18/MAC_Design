module controlpath (clk,rst,go,ld_a,ld_b,ld_m,ld_acc,ld_out,count_enabel,cmp,done,ps);
input clk,rst,go,cmp;
output reg ld_a,ld_b,ld_m,ld_acc,ld_out,count_enabel,done;
output reg [2:0]ps;
reg [2:0]ns;

parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
parameter s6=3'b110;
parameter s7=3'b111;

always@(posedge clk or posedge rst)
begin
  if(rst==1'b1)
  ps<=s0;
  else
  ps<=ns;
end

always@(go or cmp or ps)
begin
  case(ps)
  s0:begin
    if(go==1'b0)
    ns=s0;
    else
    ns=s1;
  end
  s1:ns=s2;
  s2:ns=s3;
  s3:ns=s4;
  s4:ns=s5;
  s5:ns=s6;
  s6:begin
      if(cmp==1'b1)
        ns=s7;
      else
        ns=s1;
      end
  s7:ns=s0;
  default:ns=s0;
  endcase
end


always@(ps)
begin
  case(ps)
  s0:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s1:begin
    ld_a=1'b1;
    ld_b=1'b1;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b1;
  end
  s2:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s3:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b1;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s4:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s5:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b1;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s6:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
  s7:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b1;
    done=1'b1;
    count_enabel=1'b0;
  end
  default:begin
    ld_a=1'b0;
    ld_b=1'b0;
    ld_m=1'b0;
    ld_acc=1'b0;
    ld_out=1'b0;
    done=1'b0;
    count_enabel=1'b0;
  end
 endcase 
end
endmodule