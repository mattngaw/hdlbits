module top_module (
    input  wire a, b,
    output wire out);

    nor g1 (out, a, b);

    // assign out = !(a | b);

endmodule