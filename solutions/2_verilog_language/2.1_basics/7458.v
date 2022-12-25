module top_module (
    input  wire p1a, p1b, p1c, p1d, p1e, p1f,
                p2a, p2b, p2c, p2d,
    output wire p1y, p2y
);

    wire w1, w2, x1, x2;

    assign w1 = p2a & p2b;
    assign w2 = p2c & p2d;
    assign p2y = w1 | w2;

    assign x1 = p1a & p1b & p1c;
    assign x2 = p1d & p1e & p1f;
    assign p1y = x1 | x2;

endmodule