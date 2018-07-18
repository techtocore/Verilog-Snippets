module hs_tb;

reg t_a, t_b;
wire t_c, t_s;
hs obj(t_a, t_b, t_s, t_c);
initial
begin
	$monitor("A = %b B = %b D = %b Br = %b",t_a, t_b, t_s, t_c);

	t_a=1'b0;
	t_b=1'b0;
	
	#10
	t_a=1'b0;
	t_b=1'b1;
	
	#10
	t_a=1'b1;
	t_b=1'b0;
	
	#10
	t_a=1'b1;
	t_b=1'b1;

end
endmodule

