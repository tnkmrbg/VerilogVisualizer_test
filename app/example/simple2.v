module Top(input clk, output[5:0] a);
    wire clk;
    reg[5:0] a;
    
    assign a[1:0] = 0;
    assign a[5:4] = 0;

    always@(posedge clk)begin
        a[3:2] <= a[3:2] + 4'b1;
    end 
endmodule