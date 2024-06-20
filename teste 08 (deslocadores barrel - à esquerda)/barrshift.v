/*
 *barrshift.v
 * deslocador barrel- à esquerda
 *
 */
module barrshift(a, sh, b);
	//declaração das entradas e saídas
	input [7:0] a;
	input [2:0] sh;
	output [7:0] b;
	//funcionamento do circuito- abordagem por fluxo de dados
	assign b = a << sh; 
endmodule