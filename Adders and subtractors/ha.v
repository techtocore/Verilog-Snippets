module ha(a,b,s,c);
input a,b;
output s,c;

assign s=a^b;
assign c=a&b;


//initial begin
//$monitor ("Hello World");
//end

endmodule