/*
*contador4b
*contador de 4-bits em verilog
*/
module contador4b(clk,q);
	input clk;
	output  reg [3:0] q;

	//funcionamento do circuito usando abordagem comportamental 
	initial begin
	q = 4'b0000;
	end
	
	always @(posedge clk)begin
	q = q + 4'b0001;
	end
	
endmodule