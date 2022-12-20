module top_module (
    input wire a, b, c,
    output wire w, x, y, z);

    always_comb begin

        w = a;

        x = b;
        y = b;

        z = c;
        
    end

endmodule