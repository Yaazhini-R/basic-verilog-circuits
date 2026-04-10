`timescale 1ns / 1ps

module half_adder_tb;

    reg A;
    reg B;
    wire Sum;
    wire Carry;

    // Instantiate DUT
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    initial begin
        // Apply test inputs
        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $stop;  // stop simulation
    end

endmodule
