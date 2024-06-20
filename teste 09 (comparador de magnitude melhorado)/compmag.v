/*
 * compmag.v
 * comparador de magnitude 
 */

 module compmag (a,b,aeqb,, agtb, altb);
	//declaração das entradas e saidas
	input [3:0] a,b;
	output aeqb, agtb, altb;
	//funcionamento de circuito - abordagem por fluxo de dados
	assign aeqb = (a==b);
	assign agtb = (a>b);
	assign altb = (a<b);
endmodule
 