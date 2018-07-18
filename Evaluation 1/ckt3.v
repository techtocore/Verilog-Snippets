module ckt3(a,b,y);
input a,b;
output y;

wire a1,a2,b1,b2,c1,c2,d;

assign a1=a~|b;
assign a2=a1~|a;

assign b2=a1~|b;
assign c1=b2~|a2;

assign y=c1~|c1;

//initial begin
//$monitor ("Hello World");
//end

endmodule