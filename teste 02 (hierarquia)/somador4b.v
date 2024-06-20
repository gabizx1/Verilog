/*
 *somador 4-bits.v
 *Descrição: somador de 4-bits, usando somadores completos em cascata
 *a=a3,a2,a1,a0
 *b=b3,b2,b1,b0
 *s=s3,s2,s1,s0
 */
 
 module somador4b(a,b,cin,s,cout);
	// declaração das estradas/saídas
	input [3:0] a, b;
	input cin;
	output [3:0] s;
	output cout;
	//definição dos dados intermediários(fios)
	wire c1,c2,c3;
	//declaração do funcionamento do circuito- abordagem hierarquica)
	somadorcompleto fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
   somadorcompleto fa1(.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
	somadorcompleto fa2(.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
	somadorcompleto fa3(.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));
 endmodule