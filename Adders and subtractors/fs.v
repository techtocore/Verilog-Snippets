module fs(a,b,c,df,br);
input a,b,c;
output df,br;

xor(df,a,b,c);
assign br=(~a&c)|(~a&b)|(b&c);

//initial begin
//$monitor ("Hello World");
//end

endmodule