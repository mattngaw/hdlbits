module top_module (
    input  wire a, b, c, d, e,
    output wire [24:0] out
);

    wire [24:0] x, y;

    assign x = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign y = {5{a, b, c, d, e}};

    assign out = x ~^ y;

endmodule