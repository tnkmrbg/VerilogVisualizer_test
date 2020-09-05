module Top(input clk, input reset, input A, input B, output[1:0] state_out);
    wire clk, reset, A, B;
    wire[1:0] state_out;

    assign state_out = state;

    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;

    reg[1:0] state = S0;

    always@(posedge clk)begin
        if(reset == 1'b1)begin
            state <= S0;
        end
        else begin
            case(state)
                S0: begin
                    if(A == 1'b1)begin
                        state <= S1;
                    end
                end
                S1: begin
                    if(B == 1'b1)begin
                        state <= S1;
                    end
                end
                S2: begin
                    if(A == 1'b0)begin
                        state <= S2;
                    end
                end
                S3: begin
                    if(B == 1'b0)begin
                        state <= S0;
                    end
                end
                default: begin
                    state <= S0;
                end
            endcase
        end
    end
endmodule