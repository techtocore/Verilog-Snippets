module fs_tb;

reg t_a, t_b, t_c;
wire t_df, t_br;
fs obj(t_a, t_b, t_c, t_df, t_br);
initial
begin
	$monitor("A = %b B = %b C = %b DF = %b BR = %b",t_a, t_b, t_c, t_df, t_br);

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

