module layer_16_8_16_16(clk,reset,s_valid,m_ready,data_in,m_valid,s_ready,data_out);
   input clk, reset,s_valid, m_ready;
   input signed [15:0] data_in;
   output logic signed [15:0] data_out;
   output logic m_valid, s_ready;
   logic wr_en_a;
   logic wr_en_m;
   logic wr_en_x;
   logic accum_src;
   logic en;
     logic [3:0] sel_out;
   logic [3:0] addr_W;
   logic [-1:0] addr_B;
   logic [3:0] addr_X;
   mvm_controlpath cp(clk, s_valid, reset, m_ready, addr_W,addr_X, wr_en_x, m_valid,s_ready,accum_src,en,addr_B,sel_out);
   mvm_datapath datapath(wr_en_x,addr_X,data_in,data_out,clk,reset,en,addr_W,addr_B,accum_src,sel_out);
endmodule

module mux(out,in1,in2,sel);
   input signed [15:0] in1;
   input signed [15:0] in2;
   output logic signed [15:0] out;
   input sel;
   logic [15:0] fill_zero;
   assign fill_zero = 8'd0;
   always_comb begin
      if(sel)
        out = {fill_zero,in1};
      else
        out = in2;
   end
endmodule

module layer_16_8_16_16_W_rom0(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd110;
        1: z <= 16'd20;
        2: z <= -16'd88;
        3: z <= -16'd10;
        4: z <= 16'd90;
        5: z <= -16'd82;
        6: z <= 16'd92;
        7: z <= -16'd94;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom1(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd100;
        1: z <= -16'd114;
        2: z <= -16'd37;
        3: z <= 16'd3;
        4: z <= -16'd55;
        5: z <= -16'd42;
        6: z <= -16'd65;
        7: z <= -16'd23;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom2(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd55;
        1: z <= -16'd112;
        2: z <= 16'd49;
        3: z <= 16'd112;
        4: z <= -16'd94;
        5: z <= -16'd74;
        6: z <= -16'd117;
        7: z <= 16'd41;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom3(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd118;
        1: z <= -16'd58;
        2: z <= -16'd111;
        3: z <= -16'd7;
        4: z <= 16'd107;
        5: z <= 16'd103;
        6: z <= 16'd54;
        7: z <= 16'd126;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom4(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd5;
        1: z <= 16'd94;
        2: z <= -16'd12;
        3: z <= -16'd42;
        4: z <= -16'd116;
        5: z <= -16'd48;
        6: z <= -16'd8;
        7: z <= 16'd113;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom5(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd33;
        1: z <= 16'd84;
        2: z <= -16'd12;
        3: z <= 16'd40;
        4: z <= -16'd86;
        5: z <= 16'd52;
        6: z <= -16'd111;
        7: z <= 16'd97;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom6(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd68;
        1: z <= 16'd66;
        2: z <= 16'd81;
        3: z <= 16'd102;
        4: z <= 16'd120;
        5: z <= 16'd92;
        6: z <= 16'd15;
        7: z <= 16'd111;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom7(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd94;
        1: z <= 16'd32;
        2: z <= -16'd24;
        3: z <= -16'd114;
        4: z <= 16'd7;
        5: z <= -16'd98;
        6: z <= -16'd116;
        7: z <= -16'd125;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom8(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd124;
        1: z <= 16'd0;
        2: z <= -16'd39;
        3: z <= -16'd119;
        4: z <= 16'd81;
        5: z <= 16'd81;
        6: z <= 16'd122;
        7: z <= -16'd80;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom9(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd37;
        1: z <= -16'd18;
        2: z <= 16'd88;
        3: z <= 16'd80;
        4: z <= -16'd94;
        5: z <= 16'd106;
        6: z <= 16'd49;
        7: z <= 16'd102;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom10(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd44;
        1: z <= 16'd3;
        2: z <= 16'd76;
        3: z <= 16'd37;
        4: z <= -16'd33;
        5: z <= -16'd37;
        6: z <= 16'd20;
        7: z <= 16'd2;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom11(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd124;
        1: z <= 16'd124;
        2: z <= 16'd16;
        3: z <= 16'd3;
        4: z <= -16'd101;
        5: z <= 16'd28;
        6: z <= 16'd6;
        7: z <= -16'd105;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom12(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd100;
        1: z <= 16'd95;
        2: z <= -16'd96;
        3: z <= 16'd109;
        4: z <= 16'd49;
        5: z <= -16'd102;
        6: z <= -16'd99;
        7: z <= -16'd42;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom13(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd9;
        1: z <= 16'd118;
        2: z <= -16'd90;
        3: z <= 16'd43;
        4: z <= 16'd96;
        5: z <= 16'd88;
        6: z <= 16'd18;
        7: z <= 16'd12;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom14(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd37;
        1: z <= -16'd34;
        2: z <= -16'd79;
        3: z <= 16'd58;
        4: z <= 16'd58;
        5: z <= 16'd69;
        6: z <= -16'd68;
        7: z <= 16'd54;
      endcase
   end
endmodule

module layer_16_8_16_16_W_rom15(clk, addr, z);
   input clk;
   input [2:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd66;
        1: z <= 16'd76;
        2: z <= -16'd71;
        3: z <= 16'd93;
        4: z <= -16'd24;
        5: z <= 16'd64;
        6: z <= 16'd116;
        7: z <= 16'd5;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom0(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd31;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom1(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd107;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom2(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd14;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom3(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd48;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom4(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd81;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom5(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd16;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom6(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd39;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom7(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd56;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom8(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd6;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom9(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd77;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom10(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd28;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom11(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd26;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom12(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd37;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom13(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd118;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom14(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= 16'd114;
      endcase
   end
endmodule

module layer_16_8_16_16_B_rom15(clk, addr, z);
   input clk;
   input [-1:0] addr;
   output logic signed [15:0] z;
   always_ff @(posedge clk) begin
      case(addr)
        0: z <= -16'd128;
      endcase
   end
endmodule

module ff(clk,clear_acc,in,out,enable);
   input clk,clear_acc;
   input signed [15:0] in;
   output logic signed [15:0] out;
   input enable;
   always_ff @(posedge clk) begin
      if(clear_acc)
        out <= 0;
      else if(enable)
        out <= in;
   end
endmodule

module adder(out,in1,in2);
   input signed [15:0] in1;
   input signed [15:0] in2;
   output logic signed [15:0] out;
   always_comb begin
        out = in1 + in2;
   end
endmodule

module memory(clk, data_in, data_out, addr, wr_en);
   parameter WIDTH=16, SIZE=8, LOGSIZE=3;
   input signed [WIDTH-1:0] data_in;
   output logic signed [WIDTH-1:0] data_out;
   input [LOGSIZE-1:0] addr;
   input clk, wr_en;
   logic [SIZE-1:0][WIDTH-1:0] mem;
   always_ff @(posedge clk) begin
        data_out <= mem[addr];
        if(wr_en)
          mem[addr] <= data_in;
   end
endmodule

module mult(out,in1,in2);
   input signed [15:0] in1, in2;
   output logic signed [15:0] out;
   always_comb begin
        out = in1 * in2;
   end
endmodule

module mvm_datapath(wr_en_x,addr_X,data_in,data_out,clk,reset,en,addr_W,addr_B,accum_src,sel_out);
   input wr_en_x,clk,reset,en;
   input [3:0] addr_W;
   input [-1:0] addr_B;
   input [3:0] addr_X;
   input accum_src;
   input signed [15:0] data_in;
   logic signed [15:0] x_data_out;
   output logic signed [15:0] data_out;
   input [3:0] sel_out;

//*********************************************************************************************
   logic signed [15:0] out_rom_W_0;
   logic signed [15:0] data_out0;
   layer_16_8_16_16_W_rom0 rom_W0(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_0));

   logic signed [15:0] out_rom_B_0;
   layer_16_8_16_16_B_rom0 rom_B0(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_0));

      mac mac0(clk,reset,out_rom_W_0,out_rom_B_0,x_data_out,en,data_out0,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_1;
   logic signed [15:0] data_out1;
   layer_16_8_16_16_W_rom1 rom_W1(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_1));

   logic signed [15:0] out_rom_B_1;
   layer_16_8_16_16_B_rom1 rom_B1(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_1));

      mac mac1(clk,reset,out_rom_W_1,out_rom_B_1,x_data_out,en,data_out1,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_2;
   logic signed [15:0] data_out2;
   layer_16_8_16_16_W_rom2 rom_W2(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_2));

   logic signed [15:0] out_rom_B_2;
   layer_16_8_16_16_B_rom2 rom_B2(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_2));

      mac mac2(clk,reset,out_rom_W_2,out_rom_B_2,x_data_out,en,data_out2,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_3;
   logic signed [15:0] data_out3;
   layer_16_8_16_16_W_rom3 rom_W3(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_3));

   logic signed [15:0] out_rom_B_3;
   layer_16_8_16_16_B_rom3 rom_B3(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_3));

      mac mac3(clk,reset,out_rom_W_3,out_rom_B_3,x_data_out,en,data_out3,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_4;
   logic signed [15:0] data_out4;
   layer_16_8_16_16_W_rom4 rom_W4(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_4));

   logic signed [15:0] out_rom_B_4;
   layer_16_8_16_16_B_rom4 rom_B4(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_4));

      mac mac4(clk,reset,out_rom_W_4,out_rom_B_4,x_data_out,en,data_out4,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_5;
   logic signed [15:0] data_out5;
   layer_16_8_16_16_W_rom5 rom_W5(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_5));

   logic signed [15:0] out_rom_B_5;
   layer_16_8_16_16_B_rom5 rom_B5(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_5));

      mac mac5(clk,reset,out_rom_W_5,out_rom_B_5,x_data_out,en,data_out5,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_6;
   logic signed [15:0] data_out6;
   layer_16_8_16_16_W_rom6 rom_W6(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_6));

   logic signed [15:0] out_rom_B_6;
   layer_16_8_16_16_B_rom6 rom_B6(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_6));

      mac mac6(clk,reset,out_rom_W_6,out_rom_B_6,x_data_out,en,data_out6,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_7;
   logic signed [15:0] data_out7;
   layer_16_8_16_16_W_rom7 rom_W7(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_7));

   logic signed [15:0] out_rom_B_7;
   layer_16_8_16_16_B_rom7 rom_B7(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_7));

      mac mac7(clk,reset,out_rom_W_7,out_rom_B_7,x_data_out,en,data_out7,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_8;
   logic signed [15:0] data_out8;
   layer_16_8_16_16_W_rom8 rom_W8(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_8));

   logic signed [15:0] out_rom_B_8;
   layer_16_8_16_16_B_rom8 rom_B8(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_8));

      mac mac8(clk,reset,out_rom_W_8,out_rom_B_8,x_data_out,en,data_out8,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_9;
   logic signed [15:0] data_out9;
   layer_16_8_16_16_W_rom9 rom_W9(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_9));

   logic signed [15:0] out_rom_B_9;
   layer_16_8_16_16_B_rom9 rom_B9(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_9));

      mac mac9(clk,reset,out_rom_W_9,out_rom_B_9,x_data_out,en,data_out9,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_10;
   logic signed [15:0] data_out10;
   layer_16_8_16_16_W_rom10 rom_W10(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_10));

   logic signed [15:0] out_rom_B_10;
   layer_16_8_16_16_B_rom10 rom_B10(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_10));

      mac mac10(clk,reset,out_rom_W_10,out_rom_B_10,x_data_out,en,data_out10,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_11;
   logic signed [15:0] data_out11;
   layer_16_8_16_16_W_rom11 rom_W11(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_11));

   logic signed [15:0] out_rom_B_11;
   layer_16_8_16_16_B_rom11 rom_B11(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_11));

      mac mac11(clk,reset,out_rom_W_11,out_rom_B_11,x_data_out,en,data_out11,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_12;
   logic signed [15:0] data_out12;
   layer_16_8_16_16_W_rom12 rom_W12(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_12));

   logic signed [15:0] out_rom_B_12;
   layer_16_8_16_16_B_rom12 rom_B12(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_12));

      mac mac12(clk,reset,out_rom_W_12,out_rom_B_12,x_data_out,en,data_out12,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_13;
   logic signed [15:0] data_out13;
   layer_16_8_16_16_W_rom13 rom_W13(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_13));

   logic signed [15:0] out_rom_B_13;
   layer_16_8_16_16_B_rom13 rom_B13(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_13));

      mac mac13(clk,reset,out_rom_W_13,out_rom_B_13,x_data_out,en,data_out13,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_14;
   logic signed [15:0] data_out14;
   layer_16_8_16_16_W_rom14 rom_W14(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_14));

   logic signed [15:0] out_rom_B_14;
   layer_16_8_16_16_B_rom14 rom_B14(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_14));

      mac mac14(clk,reset,out_rom_W_14,out_rom_B_14,x_data_out,en,data_out14,accum_src);

//*********************************************************************************************
   logic signed [15:0] out_rom_W_15;
   logic signed [15:0] data_out15;
   layer_16_8_16_16_W_rom15 rom_W15(.clk(clk),.addr(addr_W[2:0]),.z(out_rom_W_15));

   logic signed [15:0] out_rom_B_15;
   layer_16_8_16_16_B_rom15 rom_B15(.clk(clk),.addr(addr_B[-1:0]),.z(out_rom_B_15));

      mac mac15(clk,reset,out_rom_W_15,out_rom_B_15,x_data_out,en,data_out15,accum_src);

//*********************************************************************************************
  mux1  Mux(.sel_line(sel_out),.data_out0(data_out0),.data_out1(data_out1),.data_out2(data_out2),.data_out3(data_out3),.data_out4(data_out4),.data_out5(data_out5),.data_out6(data_out6),.data_out7(data_out7),.data_out8(data_out8),.data_out9(data_out9),.data_out10(data_out10),.data_out11(data_out11),.data_out12(data_out12),.data_out13(data_out13),.data_out14(data_out14),.data_out15(data_out15),.data_out(data_out));

   memory #(16,8,3 )myMemInstX(.clk(clk),
            .data_in(data_in),
            .data_out(x_data_out),
            .addr(addr_X[2:0]),
            .wr_en(wr_en_x));

 endmodule


module mux1(sel_line,data_out0,data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,data_out9,data_out10,data_out11,data_out12,data_out13,data_out14,data_out15,data_out);
input[3:0] sel_line;
input signed [15:0]data_out0;
input signed [15:0]data_out1;
input signed [15:0]data_out2;
input signed [15:0]data_out3;
input signed [15:0]data_out4;
input signed [15:0]data_out5;
input signed [15:0]data_out6;
input signed [15:0]data_out7;
input signed [15:0]data_out8;
input signed [15:0]data_out9;
input signed [15:0]data_out10;
input signed [15:0]data_out11;
input signed [15:0]data_out12;
input signed [15:0]data_out13;
input signed [15:0]data_out14;
input signed [15:0]data_out15;
;
output logic signed [15:0]data_out;
always_comb
begin
	if(sel_line==0)
  		data_out = data_out0;
	else if (sel_line==1)
 			data_out = data_out1;
	else if (sel_line==2)
 			data_out = data_out2;
	else if (sel_line==3)
 			data_out = data_out3;
	else if (sel_line==4)
 			data_out = data_out4;
	else if (sel_line==5)
 			data_out = data_out5;
	else if (sel_line==6)
 			data_out = data_out6;
	else if (sel_line==7)
 			data_out = data_out7;
	else if (sel_line==8)
 			data_out = data_out8;
	else if (sel_line==9)
 			data_out = data_out9;
	else if (sel_line==10)
 			data_out = data_out10;
	else if (sel_line==11)
 			data_out = data_out11;
	else if (sel_line==12)
 			data_out = data_out12;
	else if (sel_line==13)
 			data_out = data_out13;
	else if (sel_line==14)
 			data_out = data_out14;
	else if (sel_line==15)
 			data_out = data_out15;
	else data_out=0;
end
endmodule
module mac(clk,reset,out_rom_W,out_rom_B,x_data_out,en,data_out,accum_src);

     input signed [15:0] out_rom_W;
     input signed [15:0] out_rom_B;
     input signed [15:0] x_data_out;
     input en;
     input accum_src;
     input clk,reset; 
     output logic  signed [15:0] data_out;
     logic  signed [15:0] mult_out;
     logic  signed [15:0]adder_out;
     logic  signed [15:0]mux_out;
     logic  signed [15:0]pipe_out;
     logic  signed [15:0]data_out_r;
       logic clear_acc_pipe, enable_pipe;

   mult multiplier(.out(mult_out),
        .in1(out_rom_W),
        .in2(x_data_out));

//*************Pipelining Stage***********************************
   ff pipe(.clk(clk),
      .clear_acc(clear_acc_pipe),
      .in(mult_out),
      .out(pipe_out),
      .enable(enable_pipe));
   adder a1(.out(adder_out),
         .in1(data_out_r),
         .in2(pipe_out));
//***************************************************************
   mux mux1(.out(mux_out),
        .in2(adder_out),
        .in1(out_rom_B),
        .sel(accum_src));

//******RELU FUNCTION *********************************************
   always @* begin
      if(data_out_r[15]==1)
        data_out <= 0;
      else
        data_out <= data_out_r;
   end

   ff f1(.clk(clk),
      .clear_acc(reset),
      .in(mux_out),
      .out(data_out_r),
      .enable(en));
   assign clear_acc_pipe = 0;
   assign enable_pipe = 1;

endmodule

module mvm_controlpath(clk, s_valid, reset, m_ready, addr_W,addr_X, wr_en_x, m_valid,s_ready,accum_src,en,addr_B,sel_out);
   input clk, s_valid, reset, m_ready;
   output logic s_ready, m_valid;
   output logic wr_en_x;
   output logic[3:0] addr_W;
   output logic[-1:0] addr_B;
   output logic [3:0] addr_X;
   output logic en;
   logic [3:0] next_state;

	output logic [3:0] sel_out;
   parameter [2:0] Initial=3'b000, Load_Vector=3'b001, Multiply=3'b010, Data_output=3'b101, Idle=3'b110, Idle_pipe2=3'b111;

 logic en_r;
   output logic accum_src;
   parameter M=16;
   parameter N=8;
   parameter P=16;
   logic [4:0] cntr_x;
   logic [3:0] cntr;
   always_ff @(posedge clk) begin
      if(reset == 1) begin
        s_ready <= 0;
        addr_W <= 0;
        addr_B <= 0;
        wr_en_x <= 0;
        en_r <= 1;
        addr_X <= 0;
        accum_src <= 0; //adder_out
        m_valid <= 0;
        cntr_x <= 0;
        cntr <= 0;
           sel_out<=0;
        next_state <= Initial;
      end
      else begin
        case(next_state)
        Initial: begin
                   addr_W <= 0;
                   addr_B <= 0;
                   s_ready <= 0;
                   wr_en_x <= 1;
                   addr_X <= 0;
                   accum_src <= 1; //amatrix_out
                   m_valid <= 0;
                   cntr_x <= 0;
                   addr_X <= 0;
                   next_state <= Load_Vector;
                   cntr <= 0;
                 end

        Load_Vector: begin
                       if(s_valid == 1) begin
                         s_ready <= 1;
                          wr_en_x <= 1;
                          accum_src <= 1; //amatrix_out
                         if(addr_X == N-1) begin
                           wr_en_x <= 0;
                           addr_X <= 0;
                           cntr_x <= 0;
                           next_state <= Multiply;
                         s_ready<=0;
                         end
                         else begin
                           cntr_x <= cntr_x + 1;
                            addr_X <= cntr_x;    //Increment address of the memory
                         end
                       end
                       else begin
                          next_state <= Load_Vector;
                       end
                     end

        Multiply: begin
                    if(addr_X == 1) begin
                      accum_src <= 0;
                      addr_B <= addr_B + 1;
                    end
                    if(addr_X >= N) begin
                      next_state <= Idle_pipe2;
                      addr_X <= 0;
                      addr_W <= addr_W;
                    end
                    else begin
                      addr_X <= addr_X +1;
                       addr_W <= addr_W + 1;
                       m_valid<=0;
                    end
                  end

        Idle_pipe2: begin
                     m_valid<= 1;
                      next_state <= Data_output;
                    end

        Data_output: begin
            if(m_ready) begin
                     if(sel_out==P-1) begin 
		          accum_src <= 1;
                  	   m_valid<= 0;
			  sel_out<=0;
			end
			else begin
 				sel_out<=sel_out+1;
			end
                    if(addr_W >= (M*N)/P && sel_out==P-1) begin
                           accum_src <= 0;
                           addr_W <= 0;
                           addr_X <= 0;
                           s_ready <= 0;
                           next_state <= Initial;
                         end
                         else begin
				if(m_ready && sel_out==P-1)   
                            next_state <= Multiply;
                         end
                       end
                       else begin
                         next_state <= Data_output;
                       end
                     end
        endcase
      end//end of !reset
   end//end of always_ff

always_comb begin 

en=en_r; 
     case(next_state) 
           Data_output:begin 
             if(m_ready) 
			if(sel_out==P-1)begin
                		en=1; 
			end else
				en=0;
               else
           en=0;
    end

       endcase 

      end

endmodule
