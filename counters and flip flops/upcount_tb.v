/*Program By Vicky_A*/

module upcount_tb (	
);

reg clock,reset;
wire [3:0] counter;

upcount gt(clock ,reset,counter);

always #5 clock = ~clock;
initial begin
clock=0;
end
initial begin
reset = 1;
#20;
reset = 0;
end // initial	

initial begin
	$monitor("counter %4b",counter);
end // initial

initial begin
 #200 $finish;
end // initial
endmodule