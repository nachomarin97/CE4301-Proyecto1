module dramImage(   input logic clk, we,
				        input logic [17:0] a1,  a2, a3, a4, a5, a6, a7, a8, a9, a10,
			           input logic [15:0] wd1, wd2, wd3, wd4, wd5, wd6, wd7, wd8, wd9, wd10);


logic [15:0] ram[153600:0]; 



always_ff @(posedge clk)
if (we) 
begin
 ram[a1[17:2]] <= wd1; //ram[a[17:2]]
 ram[a2[17:2]] <= wd2;
 ram[a3[17:2]] <= wd3;
 ram[a4[17:2]] <= wd4;
 ram[a5[17:2]] <= wd5;
 ram[a6[17:2]] <= wd6;
 ram[a7[17:2]] <= wd7;
 ram[a8[17:2]] <= wd8;
 ram[a9[17:2]] <= wd9;
 ram[a10[17:2]] <= wd10;
end
endmodule
