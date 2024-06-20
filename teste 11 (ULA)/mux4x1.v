/*
 *mux4x1.v
 */ 
module mux4x1 (i0, i1, i2, i3, i4, i5, i6, i7, s2, s0, s1, f);
	//declaração das entradas e saídas 
	input [3:0] i0, i1, i2, i3, i4, i5, i6, i7;
	input s2,s1,s0;
	output [3:0] f;
	//descrição do funcionamento do circuito
	assign f[3]= ~s2&(~s1)&(~s0)&i0[3] | ~s2&(~s1)&s0&i1[3] | ~s2&s1&(~s0)&i2[3] | ~s2&s1&s0&i3[3] | 
					 s2&(~s1)&(~s0)&i4[3] | s2&(~s1)&s0&i5[3] | s2&s1&(~s0)&i6[3] | s2&s1&s0&i7[3]; 
					 
	assign f[2]= ~s2&(~s1)&(~s0)&i0[2] | ~s2&(~s1)&s0&i1[2] | ~s2&s1&(~s0)&i2[2] | ~s2&s1&s0&i3[2] | 
					 s2&(~s1)&(~s0)&i4[2] | s2&(~s1)&s0&i5[2] | s2&s1&(~s0)&i6[2] | s2&s1&s0&i7[2];
	
	assign f[1]= ~s2&(~s1)&(~s0)&i0[1] | ~s2&(s1)&s0&i1[1] | ~s2&s1&(~s0)&i2[1] | ~s2&s1&s0&i3[1] | 
					 s2&(~s1)&(~s0)&i4[1] | s2&(~s1)&s0&i5[1] | s2&s1&(~s0)&i6[1] | s2&s1&s0&i7[1]; 
	
	assign f[0]= ~s2&(~s1)&(~s0)&i0[0] | ~s2&(~s1)&s0&i1[0] |  s2&s1&(~s0)&i2 [0] | s2&s1&s0&i3[0] |
	             s2&(~s1)&(~s0)&i4 [0] | s2&(~s1)&s0&i5 [0] | s2&s1&(~s0)&i6[0] | s2&s1&s0&i7[0];
endmodule