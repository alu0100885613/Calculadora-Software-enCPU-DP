//Componentes varios

//Banco de registros de dos salidas y una entrada
module regfile(input  wire clk, input  wire we3, input  wire [3:0]  ra1, ra2, wa3, input  wire [7:0]  wd3, output wire [7:0]  rd1, rd2);

  reg [7:0] regb[0:15]; //memoria de 16 registros de 8 bits de ancho

  // El registro 0 siempre es cero
  // se leen dos reg combinacionalmente
  // y la escritura del tercero ocurre en flanco de subida del reloj
  always @(posedge clk)
    if (we3) regb[wa3] <= wd3;	
  assign rd1 = (ra1 != 0) ? regb[ra1] : 8'b0;
  assign rd2 = (ra2 != 0) ? regb[ra2] : 8'b0;
endmodule

module mux4_1 #(parameter WIDTH = 8)(input  wire [WIDTH-1:0] e0,e1,e2,e3, input wire [1:0] sel,output wire [WIDTH-1:0] salida);

 assign salida = 
  (sel == 2'b00) ? e0:
  (sel == 2'b01) ? e1:
  (sel == 2'b10) ? e2:
  (sel == 2'b11) ? e3:
  8'b000;

    endmodule
    
    
module dec2_4 (input wire sel0,sel1,enable,output wire sal0,sal1,sal2,sal3);
  assign sal0 = ~(sel0) & ~(sel1) & enable;
  assign sal1 = ~(sel0) & (sel1) & enable;
  assign sal2 = (sel0) & ~(sel1) & enable;
  assign sal3 = (sel0) & (sel1) & enable;
endmodule

//modulo sumador  
module sum(input  wire [9:0] a, b, output wire [9:0] y);
  assign y = a + b;
endmodule

//modulo de registro para modelar el PC, cambia en cada flanco de subida de reloj o de reset
module registro #(parameter WIDTH = 8) (input  wire clk, reset, input  wire [WIDTH-1:0] d, output reg  [WIDTH-1:0] q);
  always @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;
endmodule

//modulo multiplexor, cos s=1 sale d1, s=0 sale d0
module mux2 #(parameter WIDTH = 8) (input  wire [WIDTH-1:0] d0, d1, input  wire s, output wire [WIDTH-1:0] y);
  assign y = s ? d1 : d0; 
endmodule

module registro_jal #(parameter WIDTH = 8) (input  wire clk, reset, enable, input  wire [WIDTH-1:0] d, output reg  [WIDTH-1:0] q);
  always @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else 
      if(enable)
	q <= d;
	
endmodule
