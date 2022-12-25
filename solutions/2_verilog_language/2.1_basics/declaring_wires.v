`default_nettype none
module top_module (
    input  wire a, b, c, d,
    output wire out, out_n
);

    wire d1, d2, e;

    and a1 (d1, a, b),
        a2 (d2, c, d);

    or o1 (e, d1, d2);

    assign out = e;
    not n1 (out_n, e);

endmodule
