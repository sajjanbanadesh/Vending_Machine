`timescale 1ns/1ps

module vending_machine_tb;

reg clk, reset;
reg [1:0] coin;
wire dispense;

vending_machine uut (
    .clk(clk),
    .reset(reset),
    .coin(coin),
    .dispense(dispense)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Initialize values
    clk = 0;
    reset = 1;
    coin = 2'b00;

    #10 reset = 0;

    // Test inputs
    coin = 2'b01; #10; // ₹5
    coin = 2'b10; #10; // ₹10 → dispense

    coin = 2'b10; #10;
    coin = 2'b01; #10;

    coin = 2'b01; #10;
    coin = 2'b01; #10;
    coin = 2'b01; #10;

    coin = 2'b00; #20;

    $finish;
end

endmodule