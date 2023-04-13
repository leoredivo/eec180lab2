module fulladder(c0, s, a, b, ci);
		input a, b, ci;
		output s, c0;
		
		assign c0 = (a&b) + (a&ci) + (b&ci);
		assign s = a ^ b ^ ci;
endmodule