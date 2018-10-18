/*Program By Vicky_A*/

module jk(
input wire clock,
input wire j,
input wire k,
output reg q,
output reg q1 
);
initial begin q=1'b0; q1=1'b1; end
always @ (posedge clock)
  begin
	case({j,k})
		 {1'b0,1'b0}:begin q=q; q1=q1; end
		 {1'b0,1'b1}: begin q=1'b0; q1=1'b1; end
		 {1'b1,1'b0}:begin q=1'b1; q1=1'b0; end
		 {1'b1,1'b1}: begin q=~q; q1=~q1; end
	endcase
   end
endmodule