/*
*mux2x1_4b
*multiplexador 2x1 da 2 bits
*/

module mux2x1_4b(i0,i1,s0,f);
	//descrição das entradas e das saídas 
	input [3:0] i0,i1;
	input s0;
	output [3:0] f;
	// funcionamento do circuito
	assign f = s0 ? i1 : i0;
endmodule