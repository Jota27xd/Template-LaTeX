`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////
// Nombre: Blink LED Spartan 3E Starter Board - Verilog
// Autor: Christopher E. Munoz P.
// Fecha: Noviembre - 2015
// Email: chmunozp@live.cl
////////////////////////////////////////////////////////////////
module blink_verilog(CLK_IN, LED);

	input CLK_IN;
	output reg [7:0]LED = 0;
	
	integer clk_divider = 0;

	always@(posedge CLK_IN)
	begin
		if(clk_divider == 10000000)
		begin
			clk_divider <= 0;
			LED <= LED + 1;
		end
		else
			clk_divider <= clk_divider + 1;
	end
		
endmodule
