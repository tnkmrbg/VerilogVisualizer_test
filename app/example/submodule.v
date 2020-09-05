module Top(input clk, output[3:0] a);
    wire clk;
    wire[3:0] a;

    Sub s1(clk, a);
endmodule

module Sub(input clk, output[3:0] a);
    wire clk;
    reg[3:0] a;

    always@(posedge clk)begin
        a <= a + 1;
    end
endmodule