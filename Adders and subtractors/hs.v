module hs(a,b,d,br);
input a,b;
output d,br;

assign d=a^b;
assign br=(~a)&b;

//initial begin
//$monitor ("Hello World");
//end

endmodule