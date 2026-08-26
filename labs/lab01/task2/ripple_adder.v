module ripple_adder(
    output [3:0] sum,
    output cout,
    input [3:0] a,
    input [3:0] b,
    input cin
);
    wire c1, c2, c3; // Wires to carry the bit over to the next adder

    // Instantiating 4 full adders and chaining the carry-outs to the carry-ins
    // Format: FA_Gate instance_name (sum, cout, a, b, cin);
    
    FA_Gate fa0 (sum[0], c1, a[0], b[0], cin);
    FA_Gate fa1 (sum[1], c2, a[1], b[1], c1);
    FA_Gate fa2 (sum[2], c3, a[2], b[2], c2);
    FA_Gate fa3 (sum[3], cout, a[3], b[3], c3);

endmodule
