/*
 *somadorcompleto.v
*/
 module somadorcompleto(a, b, cin, s, cout);
	//declaração das entradas e saidas
	input a, b, cin;
	output s, cout;
	//funcionamento do circuito- abordagem por fluxo de dados
   assign s= a^b^cin;
	assign cout= a&b | a&cin | b&cin;
 endmodule