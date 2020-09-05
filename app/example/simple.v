module Top(input clk, input reset, output[3:0] a);
    wire clk, reset;
    reg[3:0] a;

    always@(posedge clk)begin
        if(reset == 1'b1)begin
        a <= 4'b0;
        end
        else begin
        a <= a + 4'b1;
        end
    end 
endmodule