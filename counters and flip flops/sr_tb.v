/*Program By Vicky_A*/

module sr_tb;
	reg clock;
	reg s;
	reg r;
	wire q,q1;
sr my_gate(

	.clock(clock),
	.s(s),
	.r(r),
	.q(q),
	.q1(q1)

	);

integer i;
initial begin 
	
	   s=1;r=0; 
	#1 s=0;r=1;
	#1 s=1;r=0;
	#40;
end

initial begin
clock = 0;
	for(i=0;i<6;i=i+1) begin
		#1 clock = ~clock;
	end // for(i=0;i<6;i=i+1)

end	
initial begin 
	$display("Clock\ts\tr\tQ\t");
	$monitor("%d\t%d\t%d\t%d\t",clock,s,r,q);
end
endmodule