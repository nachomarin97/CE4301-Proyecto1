module FullSubstracter_nBits
	#(parameter bits = 32)
	 (output logic Bout,
	  output logic [bits-1:0] R,
	  input logic Bin, 
	  input logic [bits-1:0] A, B);
	  
	logic [bits:0] borrows;
	assign borrows[0] = Bin;
	
	genvar i;
	generate
		for (i=0; i<bits; i++) begin: foorloop
			FullSubstracter fs1(borrows[i+1], R[i], borrows[i], A[i], B[i]);
		end
	endgenerate
	
	assign Bout = borrows[bits];

endmodule
