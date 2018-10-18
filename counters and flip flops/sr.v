/*Program By Vicky_A*/

module sr(
input wire clock,
input wire s,
input wire r,
output reg q,
output reg q1 
);
initial begin q=1'b0; q1=1'b1; end
always @ (posedge clock)
  begin
	case({s,r})
		 {1'b0,1'b0}:begin q=q; q1=q1; end
		 {1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
		 {1'b1,1'b0}:begin q=1'b1; q1=1'b0; end
	endcase
   end
endmodule