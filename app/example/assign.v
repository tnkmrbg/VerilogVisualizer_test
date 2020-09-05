module Top(input[3:0] a, input[2:0] b, output[7:0] c);
    assign c[3:0] = a;
    assign c[5:4] = b[1:0];
    assign c[7:6] = 0;
endmodule