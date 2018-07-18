module ckt(a,b,c,y);
input a,b,c;
output y;

wire a1,a2,b1,b2,c1,c2,d;

assign a1= (~a)~&(~b)b;
assign a2=a1&c;

assign b1=a&(~b);
assign b2=b1&c;

assign c1=a&b;
assign c2=c1&(~c);

assign d=a2|b2;
assign y=d|c2;

//initial begin
//$monitor ("Hello World");
//end

endmodule