module FA_Gate(
    output sum,
    output cout,
    input a,
    input b,
    input cin
);
    wire c1, c2, c3; // internal wires connecting the gates

    // Part (a): Constant delays of 2 for every gate
    xor #(2) (c1, a, b);
    and #(2) (c2, a, b);
    xor #(2) (sum, cin, c1);
    and #(2) (c3, cin, c1);
    or  #(2) (cout, c2, c3);

endmodule
