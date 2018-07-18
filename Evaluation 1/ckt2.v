module ckt2(a,b,y);
input a,b;
output y;

wire a1,a2,b1,b2,c1,c2,d;

assign a1=a~&a;
assign a2=a1~&b;

assign b1=b~&b;
assign b2=b1~&a;

assign y=a2~&b2;

//initial begin
//$monitor ("Hello World");
//end

endmodule