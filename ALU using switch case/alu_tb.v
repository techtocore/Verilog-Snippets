module alu_tst;
    reg [3:0] a,b;
    reg [3:0] sel;
    wire [15:0] op;
    alu u1 (op, a, b , sel);
     initial begin
      a=4'b1101;
      b=4'b0011;
      sel=4'b0000;
      #10
      sel=4'b0001;
      #10
      sel=4'b0010;
      #10
      sel=4'b0011;
      #10
      sel=4'b0101;
      #10
      sel=4'b0110;
      #10
      sel=4'b0111;
      #10
      sel=4'b1000;
      #10
      sel=4'b1001;
      #10
      sel=4'b1010;
      #10
      sel=4'b1011;
      #10
      sel=4'b1100;
      #10
      sel=4'b1101;
      #10
      sel=4'b1110;
      #10
      sel=4'b1111;
      end 
  endmodule  