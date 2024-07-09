/*
*ULA.v
*unidade lógica aritmética em verilog implementada com abordagem comportamental
*/
module ULA(a,b,x,y,z,s);
	input [3:0] a,b;
	input x,y,z;
	output reg [3:0] s;

	always@* begin
		case({x,y,z})
		3'b000: s = a + b;
		3'b001: s = a - b;
		3'b010: s = a << b;
		3'b011: s = a >> b;
		3'b100: s = a & b;
		3'b101: s = a | b;
		3'b110: s = a ^ b;
		3'b111: s = ~a;
		endcase
	end
endmodule
