module imem(input logic [31:0] a,
output logic [32:0] rd);
logic [32:0] ram[63:0];
initial
$readmemh("hexa.data",ram);
assign rd = ram[a[31:2]]; 
endmodule