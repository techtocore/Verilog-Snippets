/*Program By Vicky_A*/

module shiftreg
   (
    input wire clk, reset,
    input wire s_in,
    output wire s_out
   );
 
   reg [7:0] r_reg;
   wire [7:0] r_next;
 
 
   always @(posedge clk, negedge reset)
   begin
      if (~reset)
         r_reg <= 0;
      else
         r_reg <= r_next;
	end	
 
	assign r_next = {s_in, r_reg[7:1]};
	assign s_out = r_reg[0];
 
 
endmodule