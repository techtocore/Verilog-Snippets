/*Program By Vicky_A*/

module dff_tb; 
	reg Clock;
	reg d;
	wire q;

dff my_dff (

	.Clock(Clock),
	.d(d),
	.q(q)
	);

integer i;

	initial begin 
	d = 0;
	#10 d = 1;
	#10 d = 0;
	#10 d = 1;
	#10 d= 0;
	#10 d= 1;
	#10 d= 0;
	#40;
	end // initial

initial 

begin
	Clock = 0;
	for(i = 0;i<10;i = i+1)
		#10 Clock = ~Clock;

end // initial


initial begin 
	$monitor("Clock = %d, D = %d , Q = %d\n",Clock,d,q);
end
endmodule