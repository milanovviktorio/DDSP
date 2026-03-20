// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Mar 15 14:51:28 2026
// Host        : DESKTOP-QU8QVCL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/liubo/Documents/SDU/Semester
//               4/DDSP/D_flip_flop/D_flip_flop.sim/sim_1/impl/timing/xsim/test_bench_D_time_impl.v}
// Design      : D_flip_flop
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c86cf5fe" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module D_flip_flop
   (D,
    clk,
    Reset,
    Preset,
    Q);
  input D;
  input clk;
  input Reset;
  input Preset;
  output Q;

  wire D;
  wire D_IBUF;
  wire Preset;
  wire Preset_IBUF;
  wire Preset_IBUF_BUFG;
  wire Q;
  wire Q_OBUF;
  wire Q_reg_C_n_0;
  wire Q_reg_LDC_n_0;
  wire Q_reg_P_n_0;
  wire Reset;
  wire Reset_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

initial begin
 $sdf_annotate("test_bench_D_time_impl.sdf",,,,"tool_control");
end
  IBUF D_IBUF_inst
       (.I(D),
        .O(D_IBUF));
  BUFG Preset_IBUF_BUFG_inst
       (.I(Preset_IBUF),
        .O(Preset_IBUF_BUFG));
  IBUF Preset_IBUF_inst
       (.I(Preset),
        .O(Preset_IBUF));
  OBUF Q_OBUF_inst
       (.I(Q_OBUF),
        .O(Q));
  LUT3 #(
    .INIT(8'hB8)) 
    Q_OBUF_inst_i_1
       (.I0(Q_reg_P_n_0),
        .I1(Q_reg_LDC_n_0),
        .I2(Q_reg_C_n_0),
        .O(Q_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg_C
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_IBUF),
        .D(D_IBUF),
        .Q(Q_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    Q_reg_LDC
       (.CLR(Reset_IBUF),
        .D(1'b1),
        .G(Preset_IBUF_BUFG),
        .GE(1'b1),
        .Q(Q_reg_LDC_n_0));
  FDPE #(
    .INIT(1'b1)) 
    Q_reg_P
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D_IBUF),
        .PRE(Preset_IBUF_BUFG),
        .Q(Q_reg_P_n_0));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
