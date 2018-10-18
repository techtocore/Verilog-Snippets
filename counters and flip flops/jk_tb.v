/*Program By Vicky_A*/

module jk_tb;
	reg clock;
	reg j;
	reg k;
	wire q,q1;
jk my_gate(

	.clock(clock),
	.j(j),
	.k(k),
	.q(q),
	.q1(q1)

	);

integer i;
initial begin 
	
		j=1;k=0; 
	#1 j=0;k=1;
	#1 j=1;k=0;
	#1 j=1;k=1;
	#40;
end

initial begin
clock = 0;
	for(i=0;i<6;i=i+1) begin
		#1 clock = ~clock;
	end // for(i=0;i<6;i=i+1)

end	
initial begin 
	$display("Clock\tj\tk\tQ\t");
	$monitor("%d\t%d\t%d\t%d\t",clock,j,k,q);
end
endmodule