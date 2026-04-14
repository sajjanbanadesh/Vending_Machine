module vending_machine(
    input clk,
    input reset,
    input [1:0] coin,
    output reg dispense
);

reg [1:0] state, next_state;

parameter S0  = 2'b00;
parameter S5  = 2'b01;
parameter S10 = 2'b10;
parameter S15 = 2'b11;

// State register
always @(posedge clk or posedge reset) begin
    if (reset)
        state <= S0;
    else
        state <= next_state;
end

// Next state logic
always @(*) begin
    case(state)
        S0:  if (coin==2'b01) next_state=S5;
             else if (coin==2'b10) next_state=S10;
             else next_state=S0;

        S5:  if (coin==2'b01) next_state=S10;
             else if (coin==2'b10) next_state=S15;
             else next_state=S5;

        S10: if (coin==2'b01 || coin==2'b10) next_state=S15;
             else next_state=S10;

        S15: next_state=S0;

        default: next_state=S0;
    endcase
end

// Output logic
always @(*) begin
    dispense = (state == S15);
end

endmodule