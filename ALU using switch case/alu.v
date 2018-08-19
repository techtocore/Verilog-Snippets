module alu(op,a,b,sel);
input [3:0]a,b;
input [3:0]sel;
output reg[15:0]op;
always @(sel)
begin
	case(sel)
	4'b0000:
	begin
	op=a+b;
	$display("%b + %b = %b", a, b, op);
	end
	4'b0001:
	begin
	op=a-b;
	$display("%b - %b = %b", a, b, op);
	end
	4'b0010:
	begin
	op=a*b;
	$display("%b * %b = %b", a, b, op);
	end
	4'b0011:
	begin
	op=a/b;
	$display("%b / %b = %b", a, b, op);
	end
	4'b0100:
	begin
	op=a%b;
	$display("%b % %b = %b", a, b, op);
	end
	4'b0101:
	begin
	op=a&b;
	$display("%b & %b = %b", a, b, op);
	end
	4'b0110:
	begin
	op=a|b;
	$display("%b | %b = %b", a, b, op);
	end
	4'b0111:
	begin
	op=a^b;
	$display("%b ^ %b = %b", a, b, op);
	end
	4'b1000:
	begin
	op=~a;
	$display("~ %b = %b", a,op);
	end
	4'b1001:
	begin
	op=a&&b;
	$display("%b && %b = %b", a, b, op);
	end
	4'b1010:
	begin
	op=a||b;
	$display("%b || %b = %b", a, b, op);
	end
	4'b1011:
	begin
	op=!a;
	$display("! %b = %b", a,op);
	end
	4'b1100:
	begin
	op=a<<1;
	$display("%b << 1 = %b", a,op);
	end
	4'b1101:
	begin
	op=a>>1;
	$display("%b >> 1 = %b", a,op);
	end
	4'b1110:
	begin
	op=a + 4'b0001;
	$display("%b + 1 = %b", a,op);
	end
	4'b1111:
	begin
	op=a - 4'b0001;
	$display("%b - 1 = %b", a,op);
	end
	endcase
end
endmodule

