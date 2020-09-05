module Top(input clk, output[3:0] a, output[3:0] b);
    wire clk;
    wire[3:0] a, b;

    Sub s1(clk, a);
    Sub s2(clk, b);
endmodule

module Sub(input clk, output[3:0] a);
    wire clk;
    reg[3:0] a;

    always@(posedge clk)begin
        a <= a + 3'b0001;
    end
endmodule