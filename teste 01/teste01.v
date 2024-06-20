/*
 *teste 01
 *descrição: somador completo em verilog
 */
 
 //declaração do módulo
module teste01(a,b,cin, s, cout);
	//declaração das portas
	input a,b,cin;
	output s,cout;
	//declaração dos fios intermediários
	wire w1,w2,w3;
	// funcionamento do circuito(abordagem estrutural)
	xor u0(w1, a, b);
	xor u1(s, w1, cin);
	and u2 (w2, cin, w1);
	and u3 (w3, a, b);
	or u4 (cout, w2, w3);
endmodule