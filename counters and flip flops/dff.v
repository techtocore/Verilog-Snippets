/*Program By Vicky_A*/

module dff (

input wire Clock,
input wire d,
output reg q
	
);
always @(posedge Clock )  
	q=d;
endmodule