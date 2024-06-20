/*
 *genpar.v
 *a= a0,a1,a2,a3
*/
module genpar(a,p);
	//declaração das entradas e saídas
	input [3:0] a;
	output p;
	//funcionamento do circuito
	//possibilidade -> assign p= a[3] ^ a[2] ^ a[1] ^ a[0] = assign p= ^a
	assign p= ^a; // a = a0,a1,a2,a3 -> operador de redução em cima dos bits de a (p=a3 ^ a2 ^ a1 ^ a0)
endmodule