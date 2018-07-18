module fa_tb;

reg t_a, t_b, t_c;
wire t_sm, t_cr;
fa obj(t_a, t_b, t_c, t_sm, t_cr);
initial
begin
	$monitor("A = %b B = %b C = %b SM = %b CR = %b",t_a, t_b, t_c, t_sm, t_cr);

	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b0;
	
	#10
	t_a=1'b0;
	t_b=1'b0;
	t_c=1'b1;
	
	#10
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b0;
	
	#10
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
	
	#10
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b0;
	
	#10
	t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
	
	#10
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b0;
	
	#10
	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;

end
endmodule

