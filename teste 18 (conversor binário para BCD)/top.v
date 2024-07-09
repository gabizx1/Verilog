//modulo Top-level
module top(binary, hex2, hex1,hex0);
	//entrada-chaves
	input[7:0] binary;
	
	//saídas- display de sete seguimentos
	output [6:0] hex2,hex1,hex0;
	
	//Fios intermediários- centena, dezena e unidades da conversão de binários pra display
	wire [3:0] wcentenas, wdezenas, wunidades;
	
	//conversor binário--> BCD
	bin2BCD u0(.binary(binary), .centenas(wcentenas), .dezenas(wdezenas),  .unidades(wunidaeds));
	
	//conversor BCD --> display
	driver7seg u1 (.b(wcentenas), .d(hex2));
	driver7seg u2 (.b(wdezenas), .d(hex1));
	driver7seg u3 (.b(wunidades), .d(hex0));
endmodule
	