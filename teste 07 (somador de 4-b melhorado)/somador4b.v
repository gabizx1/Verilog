/*
 *somador4b.
 *somador de 4 bits utilizando os operadores aritméticos
 *
 */
 module somador4b(a, b, cin, s, cout);
	//declaração das entradas e saídas
	input [3:0] a,b;
	input cin;
	output[3:0] s;
	output cout;
	//funcionamento do circuito - abordagem por fluxo de dados
	assign {cout,s}= a + b + cin; 
 endmodule