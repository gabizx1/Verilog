module bin2BCD (binary, centenas, dezenas, unidades);

	//declaração das entradas
	input [7:0] binary;
	
	//declaração das saídas
	output reg [3:0] centenas, dezenas, unidades;
	
	//inteiro pra o For
	integer i;
	
	//procedimento always
	always @* begin
		
		//inicialização das variáveis
		centenas = 4'b0000;
		dezenas = 4'b0000;
		unidades = 4'b0000;
		
		//O For inicia em 7 pois o primeiro bit a entrar no processo de conversão é o MSB a ser convertido
		for (i=7; i>=0; i=i-1) begin
		
			//caso cada casa for maior ou igual a cinco, soma +3
			if(centenas >=5) centenas = centenas +3;
			if(dezenas >=5) dezenas = dezenas +3;
			if(unidades >=5) unidades = unidades +3;
			
			//desloca a esquerda
			centenas = centenas <<1;
			centenas[0] = dezenas[3];  //o LSB agora é o MSB das dezenas
			
			//desloca a esquerda
			dezenas = dezenas <<1;
			dezenas[0]= unidades[3];  //o LSB agora é o MSB das unidades
			
			//desloca a esquerda
			unidades = unidades <<1;
			unidades[0]= binary[3];  //o LSB agora é o bit
		end
	end
endmodule
