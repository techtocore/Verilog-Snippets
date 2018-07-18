module andgate_tb;

reg t_a, t_b;
wire t_y;
andgate my_gate(t_a, t_b, t_y);
initial
begin
	$monitor("A = %b B = %b Y = %b",t_a, t_b, t_y);

	t_a=1'b0;
	t_b=1'b0;
	//$display("A = %b B = %b Y = %b",t_a, t_b, t_y);
	#10
	t_a=1'b0;
	t_b=1'b1;
	//$display("A = %b B = %b Y = %b",t_a, t_b, t_y);

	#10
	t_a=1'b1;
	t_b=1'b0;
	//$display("A = %b B = %b Y = %b",t_a, t_b, t_y);

	#10
	t_a=1'b1;
	t_b=1'b1;
	//$display("A = %b B = %b Y = %b",t_a, t_b, t_y);

end
endmodule

