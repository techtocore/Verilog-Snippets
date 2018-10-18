/*Program By Vicky_A*/

module upcount (
	input clock,reset,
	output [3:0] counter
	
);

reg [3:0] counter_up;

always @(posedge clock or negedge reset) begin 

	if(reset)
		counter_up <= 4'b0000;
	else
		counter_up <= counter_up + 4'b0001;
end
assign counter = counter_up;
endmodule