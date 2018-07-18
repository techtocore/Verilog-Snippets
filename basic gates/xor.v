module xorgate(a,b,y);
input a,b;
output y;

assign y=a^b;
initial begin
$monitor ("Hello World");
end
endmodule