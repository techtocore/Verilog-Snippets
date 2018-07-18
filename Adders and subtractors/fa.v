module fa(a,b,c,sm,cr);
input a,b,c;
output sm,cr;

xor(sm,a,b,c);
assign cr=(a&b)|(b&c)|(a&c);

//initial begin
//$monitor ("Hello World");
//end

endmodule