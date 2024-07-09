/*
*RegCarga.v
* Registrador de carga paralela em verilog usando a abordagem comportamental
*/

module RegCarga (d,clk,ld,q);

	//entrada de daos
	input [3:0] d;
	
	// entrada de controle
	input clk, ld;
	
	//saída 
	output reg [3:0] q;
	
	//iniciando o valor do registrador
	initial begin 
		q=4'b0000;
	end
	
	//procediemnto sensível a borda de descida do clock
	always @(negedge clk) begin
	
		//casi ld=1, realiza a carga paralela
		if (ld==1'b1) q=d;
		
	end
endmodule
