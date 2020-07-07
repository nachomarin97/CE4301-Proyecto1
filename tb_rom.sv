module tb_rom();

//reg clk;
reg [18:0] addr1, addr2, addr3, addr4, addr5, addr6, addr7, addr8, addr9, addr10;
wire [15:0] data1, data2, data3, data4, data5, data6, data7, data8, data9, data10;

rom romp( .addr1(addr1), .addr2(addr2), .addr3(addr3), .addr4(addr4), .addr5(addr5),
			 .addr6(addr6), .addr7(addr7),  .addr8(addr8), .addr9(addr9), .addr10(addr10),
			 .data1(data1), .data2(data2), .data3(data3), .data4(data4), .data5(data5),
			 .data6(data6), .data7(data7), .data8(data8), .data9(data9), .data10(data10));


 //always begin
	
  	//clk <=0;
  	//#5;
  	//clk <=1;
	//#5;
  	
  //end

initial begin
//@(negedge clk);
#5 addr1 <= 19'd0; addr2 <= 19'd1;addr3 <= 19'd3; addr4 <= 19'd4; addr5 <= 19'd5; 
   addr6 <= 19'd6; addr7 <= 19'd7;addr8 <= 19'd8; addr9 <= 19'd9; addr10 <= 19'd10;

#5 addr1 <= 19'd11; addr2 <= 19'd12;addr3 <= 19'd13; addr4 <= 19'd14; addr5 <= 19'd15; 
   addr6 <= 19'd16; addr7 <= 19'd17;addr8 <= 19'd18; addr9 <= 19'd19; addr10 <= 19'd20;

#5 addr1 <= 19'd21; addr2 <= 19'd22; addr3 <= 19'd23; addr4 <= 19'd24; addr5 <= 19'd25;
   addr6 <= 19'd26; addr7 <= 19'd27; addr8 <= 19'd28; addr9 <= 19'd29; addr10 <= 19'd30;

end
endmodule