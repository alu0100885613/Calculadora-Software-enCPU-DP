`timescale 1 ns /10 ps



module cpu_tb;

    reg clk, reset;
    reg [7:0] Pe0, Pe1, Pe2, Pe3;
    wire[7:0] ps0,ps1,ps2,ps3;
    wire [9:0] PC_out;
    


    always begin 
	    clk = 1;
	    #10;
	    clk=0;
	    #10;
    end
    
    initial begin
        $monitor("time=%0d, clk=%b, reset=%b", $time, clk, reset);

        $dumpfile("cpu_tb.vcd");
        $dumpvars;

        Pe0 = 8'b00000110;		//operacion
    	Pe1 = 8'b00000101;		//operador
        reset = 1;
	    #5;
	    reset=0;
	    #299
	     Pe1 = 8'b00000111;
	     #299
	    Pe1 = 8'b00000101;
	    #2000
	     Pe0 = 8'b00001000;
	    #299
	    Pe1 = 8'b00000011;

	    #299
	    Pe1 = 8'b00000101;

	    #2000;
        
    $finish;
    end  
    
    cpu cpu_monociclo(clk, reset, Pe0, Pe1, Pe2, Pe3,ps0,ps1,ps2,ps3,PC_out);
    endmodule