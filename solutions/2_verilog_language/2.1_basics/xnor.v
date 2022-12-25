module top_module (
    input  wire a, b,
    output wire out);

    xnor g1 (out, a, b);

    // assign out = !(a | b) | (a & b);

endmodule