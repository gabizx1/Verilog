/*
*mux8x1_4b
*multiplexador 8x1 de 4-bits usando abordagem comportamental
*/
module mux8x1_4b(i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,f);
	input [3:0] i0,i1,i2,i3,i4,i5,i6,i7;
	input s2,s1,s0;
	output reg [3:0] f;
	// descrição do circuito - abordagem comportamental
	//Always Combinacional
	always @* begin
		//estrutura case
		case({s2,s1,s0})
			3'b000: 	f=i0;
			3'b001: 	f=i1;
			3'b010:	f=i2;
			3'b011:	f=i3;
			3'b100:	f=i4;
			3'b101:	f=i5;
			3'b110:	f=i6;
			3'b111:	f=i7;
		endcase
	end
endmodule
