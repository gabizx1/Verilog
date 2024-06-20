

module mux4x1_2 (
    input wire i0, i1, i2, i3,
    input wire s0, s1,
    output reg f
);

    always @(*) begin
        case ({s1, s0})
            2'b00: f = i0;
            2'b01: f = i1;
            2'b10: f = i2;
            2'b11: f = i3;
            default: f = 1'b0;  // Valor padrão, embora nunca deva acontecer
        endcase
    end
endmodule
