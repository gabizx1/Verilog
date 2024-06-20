/*
 *mux4x1.v
 *
 */
module mux4x1(i0, i1, i2, i3, s0, s1, f);
	//declaração das entradas e saídas 
	input i0, i1, i2, i3, s1, s0;
	output f;
	//descrição do funcionamento do circuito
	assign f= i0&(~s1)&(~s0) | i1&(~s1)&s0 | i2&s1&(~s0) | i3&s1&s0;	
	
endmodule