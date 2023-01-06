/*
 * module mod_a (
 *    output out1, out2,
 *    input in1, in2, in3, in4
 * );
 */

module top_module (
    input wire a, b, c, d,
    output wire out1, out2
);

    mod_a m1 (.out1(out1), .out2(out2), .in1(a), .in2(b), .in3(c), .in4(d));

endmodule