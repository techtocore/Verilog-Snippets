/*Program By Vicky_A*/

module upcount (
	input clock,reset,
	output reg [2:0] counter
	
);

always @(posedge clock or negedge reset) begin 

	if(reset | counter == 3'b111)
	counter <= 3'b000;
	else
	counter <= counter + 3'b001;
end
endmodule