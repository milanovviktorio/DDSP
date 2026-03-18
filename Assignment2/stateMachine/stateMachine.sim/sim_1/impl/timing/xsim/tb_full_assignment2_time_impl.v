// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed Mar 18 11:54:28 2026
// Host        : DESKTOP-QU8QVCL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/liubo/Documents/GitHub
//               projects/DDSP/Assignment2/stateMachine/stateMachine.sim/sim_1/impl/timing/xsim/tb_full_assignment2_time_impl.v}
// Design      : full_assignment2
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module A
   (D,
    \internalBit_reg[6]_0 ,
    \internalBit_reg[5]_0 ,
    \internalBit_reg[4]_0 ,
    \internalBit_reg[3]_0 ,
    \internalBit_reg[0]_0 ,
    \internalBit_reg[1]_0 ,
    Q,
    \internalBit_reg[2]_0 ,
    \internalBit_reg[7]_0 ,
    \internalBit_reg[7]_1 ,
    \internalBit_reg[7]_2 ,
    \internalBit_reg[7]_3 ,
    \internalBit_reg[7]_4 ,
    \internalBit_reg[7]_5 ,
    \internalBit[7]_i_7_0 ,
    \internalBit[7]_i_7_1 ,
    \internalBit[7]_i_7_2 ,
    \internalBit[7]_i_11_0 ,
    \internalBit[7]_i_11_1 ,
    \internalBit[7]_i_11_2 ,
    \internalBit[7]_i_11_3 ,
    \internalBit_reg[0]_1 ,
    \internalBit_reg[7]_6 ,
    \internalBit_reg[7]_7 ,
    CLK,
    AR,
    \internalBit_reg[6]_1 );
  output [0:0]D;
  output \internalBit_reg[6]_0 ;
  output \internalBit_reg[5]_0 ;
  output \internalBit_reg[4]_0 ;
  output \internalBit_reg[3]_0 ;
  output \internalBit_reg[0]_0 ;
  output \internalBit_reg[1]_0 ;
  output [7:0]Q;
  output \internalBit_reg[2]_0 ;
  input \internalBit_reg[7]_0 ;
  input \internalBit_reg[7]_1 ;
  input \internalBit_reg[7]_2 ;
  input \internalBit_reg[7]_3 ;
  input \internalBit_reg[7]_4 ;
  input \internalBit_reg[7]_5 ;
  input \internalBit[7]_i_7_0 ;
  input \internalBit[7]_i_7_1 ;
  input \internalBit[7]_i_7_2 ;
  input \internalBit[7]_i_11_0 ;
  input \internalBit[7]_i_11_1 ;
  input \internalBit[7]_i_11_2 ;
  input \internalBit[7]_i_11_3 ;
  input \internalBit_reg[0]_1 ;
  input [7:0]\internalBit_reg[7]_6 ;
  input [0:0]\internalBit_reg[7]_7 ;
  input CLK;
  input [0:0]AR;
  input [6:0]\internalBit_reg[6]_1 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [7:0]Q;
  wire \internalBit[7]_i_11_0 ;
  wire \internalBit[7]_i_11_1 ;
  wire \internalBit[7]_i_11_2 ;
  wire \internalBit[7]_i_11_3 ;
  wire \internalBit[7]_i_11_n_0 ;
  wire \internalBit[7]_i_16_n_0 ;
  wire \internalBit[7]_i_7_0 ;
  wire \internalBit[7]_i_7_1 ;
  wire \internalBit[7]_i_7_2 ;
  wire \internalBit[7]_i_7_n_0 ;
  wire \internalBit[7]_i_8_n_0 ;
  wire \internalBit_reg[0]_0 ;
  wire \internalBit_reg[0]_1 ;
  wire \internalBit_reg[1]_0 ;
  wire \internalBit_reg[2]_0 ;
  wire \internalBit_reg[3]_0 ;
  wire \internalBit_reg[4]_0 ;
  wire \internalBit_reg[5]_0 ;
  wire \internalBit_reg[6]_0 ;
  wire [6:0]\internalBit_reg[6]_1 ;
  wire \internalBit_reg[7]_0 ;
  wire \internalBit_reg[7]_1 ;
  wire \internalBit_reg[7]_2 ;
  wire \internalBit_reg[7]_3 ;
  wire \internalBit_reg[7]_4 ;
  wire \internalBit_reg[7]_5 ;
  wire [7:0]\internalBit_reg[7]_6 ;
  wire [0:0]\internalBit_reg[7]_7 ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[0]_i_4 
       (.I0(Q[0]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [0]),
        .O(\internalBit_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[1]_i_4 
       (.I0(Q[1]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [1]),
        .O(\internalBit_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[2]_i_4 
       (.I0(Q[2]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [2]),
        .O(\internalBit_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[3]_i_4 
       (.I0(Q[3]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [3]),
        .O(\internalBit_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[4]_i_4 
       (.I0(Q[4]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [4]),
        .O(\internalBit_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[6]_i_4 
       (.I0(Q[6]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [6]),
        .O(\internalBit_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \internalBit[7]_i_10 
       (.I0(Q[5]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [5]),
        .O(\internalBit_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h1777177717771117)) 
    \internalBit[7]_i_11 
       (.I0(\internalBit[7]_i_7_0 ),
        .I1(\internalBit_reg[4]_0 ),
        .I2(\internalBit[7]_i_7_1 ),
        .I3(\internalBit_reg[3]_0 ),
        .I4(\internalBit[7]_i_7_2 ),
        .I5(\internalBit[7]_i_16_n_0 ),
        .O(\internalBit[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B2FF00B2)) 
    \internalBit[7]_i_16 
       (.I0(\internalBit[7]_i_11_0 ),
        .I1(\internalBit_reg[0]_0 ),
        .I2(\internalBit[7]_i_11_1 ),
        .I3(\internalBit_reg[1]_0 ),
        .I4(\internalBit[7]_i_11_2 ),
        .I5(\internalBit[7]_i_11_3 ),
        .O(\internalBit[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB888B8B88)) 
    \internalBit[7]_i_2 
       (.I0(\internalBit_reg[7]_0 ),
        .I1(\internalBit_reg[7]_1 ),
        .I2(\internalBit_reg[7]_2 ),
        .I3(\internalBit[7]_i_7_n_0 ),
        .I4(\internalBit[7]_i_8_n_0 ),
        .I5(\internalBit_reg[7]_3 ),
        .O(D));
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    \internalBit[7]_i_7 
       (.I0(\internalBit_reg[7]_4 ),
        .I1(\internalBit_reg[6]_0 ),
        .I2(\internalBit_reg[7]_5 ),
        .I3(\internalBit_reg[5]_0 ),
        .I4(\internalBit[7]_i_11_n_0 ),
        .O(\internalBit[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \internalBit[7]_i_8 
       (.I0(Q[7]),
        .I1(\internalBit_reg[0]_1 ),
        .I2(\internalBit_reg[7]_6 [7]),
        .O(\internalBit[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[0] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[1] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[2] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[3] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[4] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[5] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[6] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(\internalBit_reg[6]_1 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[7] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_7 ),
        .CLR(AR),
        .D(D),
        .Q(Q[7]));
endmodule

module B
   (D,
    \internalBit_reg[1]_0 ,
    \internalBit_reg[3]_0 ,
    \internalBit_reg[4]_0 ,
    \internalBit_reg[6]_0 ,
    \internalBit_reg[4]_1 ,
    \internalBit_reg[5]_0 ,
    \internalBit_reg[0]_0 ,
    \internalBit_reg[7]_0 ,
    \internalBit_reg[7]_1 ,
    \internalBit_reg[1]_1 ,
    \internalBit_reg[1]_2 ,
    \internalBit_reg[1]_3 ,
    \internalBit_reg[1]_4 ,
    \internalBit_reg[2]_0 ,
    \internalBit_reg[2]_1 ,
    \internalBit_reg[3]_1 ,
    \internalBit_reg[3]_2 ,
    \internalBit_reg[4]_2 ,
    \internalBit_reg[4]_3 ,
    \internalBit_reg[6]_1 ,
    \internalBit_reg[6]_2 ,
    Q,
    \internalBit_reg[5]_1 ,
    \internalBit_reg[5]_2 ,
    \internalBit_reg[5]_3 ,
    \internalBit_reg[6]_3 ,
    \internalBit_reg[2]_2 ,
    \internalBit_reg[2]_3 ,
    \internalBit_reg[7]_2 ,
    \internalBit_reg[0]_1 ,
    \internalBit_reg[0]_2 ,
    \internalBit_reg[7]_3 ,
    \internalBit_reg[7]_4 ,
    CLK,
    AR);
  output [4:0]D;
  output \internalBit_reg[1]_0 ;
  output \internalBit_reg[3]_0 ;
  output \internalBit_reg[4]_0 ;
  output \internalBit_reg[6]_0 ;
  output \internalBit_reg[4]_1 ;
  output \internalBit_reg[5]_0 ;
  output \internalBit_reg[0]_0 ;
  output [7:0]\internalBit_reg[7]_0 ;
  output \internalBit_reg[7]_1 ;
  input \internalBit_reg[1]_1 ;
  input \internalBit_reg[1]_2 ;
  input \internalBit_reg[1]_3 ;
  input \internalBit_reg[1]_4 ;
  input \internalBit_reg[2]_0 ;
  input \internalBit_reg[2]_1 ;
  input \internalBit_reg[3]_1 ;
  input \internalBit_reg[3]_2 ;
  input \internalBit_reg[4]_2 ;
  input \internalBit_reg[4]_3 ;
  input \internalBit_reg[6]_1 ;
  input \internalBit_reg[6]_2 ;
  input [7:0]Q;
  input \internalBit_reg[5]_1 ;
  input [2:0]\internalBit_reg[5]_2 ;
  input \internalBit_reg[5]_3 ;
  input \internalBit_reg[6]_3 ;
  input \internalBit_reg[2]_2 ;
  input \internalBit_reg[2]_3 ;
  input [7:0]\internalBit_reg[7]_2 ;
  input \internalBit_reg[0]_1 ;
  input \internalBit_reg[0]_2 ;
  input [0:0]\internalBit_reg[7]_3 ;
  input [2:0]\internalBit_reg[7]_4 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [7:0]Q;
  wire \internalBit[1]_i_3_n_0 ;
  wire \internalBit[2]_i_3_n_0 ;
  wire \internalBit[2]_i_5_n_0 ;
  wire \internalBit[3]_i_3_n_0 ;
  wire \internalBit[4]_i_3_n_0 ;
  wire \internalBit[6]_i_3_n_0 ;
  wire \internalBit_reg[0]_0 ;
  wire \internalBit_reg[0]_1 ;
  wire \internalBit_reg[0]_2 ;
  wire \internalBit_reg[1]_0 ;
  wire \internalBit_reg[1]_1 ;
  wire \internalBit_reg[1]_2 ;
  wire \internalBit_reg[1]_3 ;
  wire \internalBit_reg[1]_4 ;
  wire \internalBit_reg[2]_0 ;
  wire \internalBit_reg[2]_1 ;
  wire \internalBit_reg[2]_2 ;
  wire \internalBit_reg[2]_3 ;
  wire \internalBit_reg[3]_0 ;
  wire \internalBit_reg[3]_1 ;
  wire \internalBit_reg[3]_2 ;
  wire \internalBit_reg[4]_0 ;
  wire \internalBit_reg[4]_1 ;
  wire \internalBit_reg[4]_2 ;
  wire \internalBit_reg[4]_3 ;
  wire \internalBit_reg[5]_0 ;
  wire \internalBit_reg[5]_1 ;
  wire [2:0]\internalBit_reg[5]_2 ;
  wire \internalBit_reg[5]_3 ;
  wire \internalBit_reg[6]_0 ;
  wire \internalBit_reg[6]_1 ;
  wire \internalBit_reg[6]_2 ;
  wire \internalBit_reg[6]_3 ;
  wire [7:0]\internalBit_reg[7]_0 ;
  wire \internalBit_reg[7]_1 ;
  wire [7:0]\internalBit_reg[7]_2 ;
  wire [0:0]\internalBit_reg[7]_3 ;
  wire [2:0]\internalBit_reg[7]_4 ;

  LUT5 #(
    .INIT(32'hACACFF0C)) 
    \internalBit[0]_i_3 
       (.I0(\internalBit_reg[7]_0 [0]),
        .I1(\internalBit_reg[7]_2 [0]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8BB8B88B)) 
    \internalBit[1]_i_1 
       (.I0(\internalBit_reg[1]_1 ),
        .I1(\internalBit_reg[1]_2 ),
        .I2(\internalBit[1]_i_3_n_0 ),
        .I3(\internalBit_reg[1]_3 ),
        .I4(\internalBit_reg[1]_0 ),
        .I5(\internalBit_reg[1]_4 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFEAEA808)) 
    \internalBit[1]_i_3 
       (.I0(\internalBit_reg[0]_0 ),
        .I1(\internalBit_reg[5]_2 [0]),
        .I2(\internalBit_reg[5]_1 ),
        .I3(Q[0]),
        .I4(\internalBit_reg[2]_3 ),
        .O(\internalBit[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hACACFF0C)) 
    \internalBit[1]_i_5 
       (.I0(\internalBit_reg[7]_0 [1]),
        .I1(\internalBit_reg[7]_2 [1]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[1]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8888BBBB8BB8B88B)) 
    \internalBit[2]_i_1 
       (.I0(\internalBit_reg[2]_0 ),
        .I1(\internalBit_reg[1]_2 ),
        .I2(\internalBit[2]_i_3_n_0 ),
        .I3(\internalBit_reg[2]_1 ),
        .I4(\internalBit[2]_i_5_n_0 ),
        .I5(\internalBit_reg[1]_4 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB2BB22B2)) 
    \internalBit[2]_i_3 
       (.I0(\internalBit_reg[1]_0 ),
        .I1(\internalBit_reg[1]_3 ),
        .I2(\internalBit_reg[0]_0 ),
        .I3(\internalBit_reg[2]_2 ),
        .I4(\internalBit_reg[2]_3 ),
        .O(\internalBit[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hACACFF0C)) 
    \internalBit[2]_i_5 
       (.I0(\internalBit_reg[7]_0 [2]),
        .I1(\internalBit_reg[7]_2 [2]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[2]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB888B8B88)) 
    \internalBit[3]_i_1 
       (.I0(\internalBit_reg[3]_1 ),
        .I1(\internalBit_reg[1]_2 ),
        .I2(\internalBit_reg[1]_4 ),
        .I3(\internalBit[3]_i_3_n_0 ),
        .I4(\internalBit_reg[3]_2 ),
        .I5(\internalBit_reg[3]_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFEAEA808)) 
    \internalBit[3]_i_3 
       (.I0(\internalBit[2]_i_5_n_0 ),
        .I1(\internalBit_reg[5]_2 [1]),
        .I2(\internalBit_reg[5]_1 ),
        .I3(Q[2]),
        .I4(\internalBit[2]_i_3_n_0 ),
        .O(\internalBit[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \internalBit[3]_i_5 
       (.I0(\internalBit_reg[7]_0 [3]),
        .I1(\internalBit_reg[7]_2 [3]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[3]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB888B8B88)) 
    \internalBit[4]_i_1 
       (.I0(\internalBit_reg[4]_2 ),
        .I1(\internalBit_reg[1]_2 ),
        .I2(\internalBit_reg[1]_4 ),
        .I3(\internalBit[4]_i_3_n_0 ),
        .I4(\internalBit_reg[4]_3 ),
        .I5(\internalBit_reg[4]_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h71771171)) 
    \internalBit[4]_i_3 
       (.I0(\internalBit_reg[3]_0 ),
        .I1(\internalBit_reg[3]_2 ),
        .I2(\internalBit[2]_i_5_n_0 ),
        .I3(\internalBit_reg[2]_1 ),
        .I4(\internalBit[2]_i_3_n_0 ),
        .O(\internalBit[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \internalBit[4]_i_5 
       (.I0(\internalBit_reg[7]_0 [4]),
        .I1(\internalBit_reg[7]_2 [4]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[4]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \internalBit[5]_i_3 
       (.I0(\internalBit_reg[7]_0 [5]),
        .I1(\internalBit_reg[7]_2 [5]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[5]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h757F10158A80EFEA)) 
    \internalBit[5]_i_4 
       (.I0(\internalBit[4]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\internalBit_reg[5]_1 ),
        .I3(\internalBit_reg[5]_2 [2]),
        .I4(\internalBit_reg[4]_0 ),
        .I5(\internalBit_reg[5]_3 ),
        .O(\internalBit_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hBBB8B8BB888B8B88)) 
    \internalBit[6]_i_1 
       (.I0(\internalBit_reg[6]_1 ),
        .I1(\internalBit_reg[1]_2 ),
        .I2(\internalBit_reg[1]_4 ),
        .I3(\internalBit[6]_i_3_n_0 ),
        .I4(\internalBit_reg[6]_2 ),
        .I5(\internalBit_reg[6]_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h17771117)) 
    \internalBit[6]_i_3 
       (.I0(\internalBit_reg[5]_0 ),
        .I1(\internalBit_reg[6]_3 ),
        .I2(\internalBit_reg[4]_0 ),
        .I3(\internalBit_reg[4]_3 ),
        .I4(\internalBit[4]_i_3_n_0 ),
        .O(\internalBit[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \internalBit[6]_i_5 
       (.I0(\internalBit_reg[7]_0 [6]),
        .I1(\internalBit_reg[7]_2 [6]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[6]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \internalBit[7]_i_9 
       (.I0(\internalBit_reg[7]_0 [7]),
        .I1(\internalBit_reg[7]_2 [7]),
        .I2(\internalBit_reg[0]_1 ),
        .I3(Q[7]),
        .I4(\internalBit_reg[0]_2 ),
        .O(\internalBit_reg[7]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[0] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(\internalBit_reg[7]_4 [0]),
        .Q(\internalBit_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[1] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(D[0]),
        .Q(\internalBit_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[2] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(D[1]),
        .Q(\internalBit_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[3] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(D[2]),
        .Q(\internalBit_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[4] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(D[3]),
        .Q(\internalBit_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[5] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(\internalBit_reg[7]_4 [1]),
        .Q(\internalBit_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[6] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(D[4]),
        .Q(\internalBit_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[7] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_3 ),
        .CLR(AR),
        .D(\internalBit_reg[7]_4 [2]),
        .Q(\internalBit_reg[7]_0 [7]));
endmodule

module C
   (Q,
    \internalBit_reg[7]_0 ,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]\internalBit_reg[7]_0 ;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [7:0]Q;
  wire [0:0]\internalBit_reg[7]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[0] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[1] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[2] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[3] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[4] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[5] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[6] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[7] 
       (.C(CLK),
        .CE(\internalBit_reg[7]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module D
   (\internalBit_reg[2]_0 ,
    Q,
    \internalBit_reg[2]_1 ,
    \internalBit_reg[5]_0 ,
    \internalBit[5]_i_4 ,
    \internalBit[5]_i_4_0 ,
    \internalBit[5]_i_4_1 ,
    \internalBit[5]_i_4_2 ,
    \internalBit[5]_i_4_3 ,
    E,
    D,
    CLK,
    AR);
  output \internalBit_reg[2]_0 ;
  output [7:0]Q;
  output \internalBit_reg[2]_1 ;
  output \internalBit_reg[5]_0 ;
  input [1:0]\internalBit[5]_i_4 ;
  input [1:0]\internalBit[5]_i_4_0 ;
  input \internalBit[5]_i_4_1 ;
  input \internalBit[5]_i_4_2 ;
  input [1:0]\internalBit[5]_i_4_3 ;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [1:0]\internalBit[5]_i_4 ;
  wire [1:0]\internalBit[5]_i_4_0 ;
  wire \internalBit[5]_i_4_1 ;
  wire \internalBit[5]_i_4_2 ;
  wire [1:0]\internalBit[5]_i_4_3 ;
  wire \internalBit_reg[2]_0 ;
  wire \internalBit_reg[2]_1 ;
  wire \internalBit_reg[5]_0 ;

  LUT6 #(
    .INIT(64'h3C5500003CAA00AA)) 
    \internalBit[5]_i_5 
       (.I0(Q[5]),
        .I1(\internalBit[5]_i_4 [1]),
        .I2(\internalBit[5]_i_4_0 [1]),
        .I3(\internalBit[5]_i_4_1 ),
        .I4(\internalBit[5]_i_4_2 ),
        .I5(\internalBit[5]_i_4_3 [1]),
        .O(\internalBit_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hC0AAFFFFC0000000)) 
    \internalBit[7]_i_15 
       (.I0(Q[2]),
        .I1(\internalBit[5]_i_4 [0]),
        .I2(\internalBit[5]_i_4_0 [0]),
        .I3(\internalBit[5]_i_4_1 ),
        .I4(\internalBit[5]_i_4_2 ),
        .I5(\internalBit[5]_i_4_3 [0]),
        .O(\internalBit_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hC3AAFFFFC355FF55)) 
    \internalBit[7]_i_19 
       (.I0(Q[2]),
        .I1(\internalBit[5]_i_4 [0]),
        .I2(\internalBit[5]_i_4_0 [0]),
        .I3(\internalBit[5]_i_4_1 ),
        .I4(\internalBit[5]_i_4_2 ),
        .I5(\internalBit[5]_i_4_3 [0]),
        .O(\internalBit_reg[2]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \internalBit_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module Datapath
   (\internalBit_reg[4] ,
    Q,
    \internalBit_reg[5] ,
    \internalBit_reg[0] ,
    \internalBit_reg[0]_0 ,
    \internalBit_reg[7] ,
    D,
    \internalBit_reg[1] ,
    \internalBit_reg[1]_0 ,
    \internalBit_reg[1]_1 ,
    \internalBit_reg[2] ,
    \internalBit_reg[3] ,
    \internalBit_reg[4]_0 ,
    \internalBit_reg[6] ,
    \internalBit_reg[7]_0 ,
    \internalBit_reg[5]_0 ,
    \internalBit_reg[2]_0 ,
    \internalBit_reg[0]_1 ,
    \internalBit_reg[0]_2 ,
    E,
    CLK,
    AR,
    \internalBit_reg[7]_1 ,
    \internalBit_reg[7]_2 ,
    \internalBit_reg[7]_3 );
  output \internalBit_reg[4] ;
  output [7:0]Q;
  output \internalBit_reg[5] ;
  output \internalBit_reg[0] ;
  output \internalBit_reg[0]_0 ;
  output [7:0]\internalBit_reg[7] ;
  input [1:0]D;
  input \internalBit_reg[1] ;
  input \internalBit_reg[1]_0 ;
  input \internalBit_reg[1]_1 ;
  input \internalBit_reg[2] ;
  input \internalBit_reg[3] ;
  input \internalBit_reg[4]_0 ;
  input \internalBit_reg[6] ;
  input \internalBit_reg[7]_0 ;
  input \internalBit_reg[5]_0 ;
  input \internalBit_reg[2]_0 ;
  input \internalBit_reg[0]_1 ;
  input \internalBit_reg[0]_2 ;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input [0:0]\internalBit_reg[7]_1 ;
  input [0:0]\internalBit_reg[7]_2 ;
  input [0:0]\internalBit_reg[7]_3 ;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \internalBit_reg[0] ;
  wire \internalBit_reg[0]_0 ;
  wire \internalBit_reg[0]_1 ;
  wire \internalBit_reg[0]_2 ;
  wire \internalBit_reg[1] ;
  wire \internalBit_reg[1]_0 ;
  wire \internalBit_reg[1]_1 ;
  wire \internalBit_reg[2] ;
  wire \internalBit_reg[2]_0 ;
  wire \internalBit_reg[3] ;
  wire \internalBit_reg[4] ;
  wire \internalBit_reg[4]_0 ;
  wire \internalBit_reg[5] ;
  wire \internalBit_reg[5]_0 ;
  wire \internalBit_reg[6] ;
  wire [7:0]\internalBit_reg[7] ;
  wire \internalBit_reg[7]_0 ;
  wire [0:0]\internalBit_reg[7]_1 ;
  wire [0:0]\internalBit_reg[7]_2 ;
  wire [0:0]\internalBit_reg[7]_3 ;

  PIPO uREG
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q),
        .\internalBit_reg[0] (\internalBit_reg[0] ),
        .\internalBit_reg[0]_0 (\internalBit_reg[0]_0 ),
        .\internalBit_reg[0]_1 (\internalBit_reg[0]_1 ),
        .\internalBit_reg[0]_2 (\internalBit_reg[0]_2 ),
        .\internalBit_reg[1] (\internalBit_reg[1] ),
        .\internalBit_reg[1]_0 (\internalBit_reg[1]_0 ),
        .\internalBit_reg[1]_1 (\internalBit_reg[1]_1 ),
        .\internalBit_reg[2] (\internalBit_reg[2] ),
        .\internalBit_reg[2]_0 (\internalBit_reg[2]_0 ),
        .\internalBit_reg[3] (\internalBit_reg[3] ),
        .\internalBit_reg[4] (\internalBit_reg[4] ),
        .\internalBit_reg[4]_0 (\internalBit_reg[4]_0 ),
        .\internalBit_reg[5] (\internalBit_reg[5] ),
        .\internalBit_reg[5]_0 (\internalBit_reg[5]_0 ),
        .\internalBit_reg[6] (\internalBit_reg[6] ),
        .\internalBit_reg[7] (\internalBit_reg[7] ),
        .\internalBit_reg[7]_0 (\internalBit_reg[7]_0 ),
        .\internalBit_reg[7]_1 (\internalBit_reg[7]_1 ),
        .\internalBit_reg[7]_2 (\internalBit_reg[7]_2 ),
        .\internalBit_reg[7]_3 (\internalBit_reg[7]_3 ));
endmodule

module PIPO
   (\internalBit_reg[4] ,
    Q,
    \internalBit_reg[5] ,
    \internalBit_reg[0] ,
    \internalBit_reg[0]_0 ,
    \internalBit_reg[7] ,
    \internalBit_reg[1] ,
    \internalBit_reg[1]_0 ,
    \internalBit_reg[1]_1 ,
    \internalBit_reg[2] ,
    \internalBit_reg[3] ,
    \internalBit_reg[4]_0 ,
    \internalBit_reg[6] ,
    \internalBit_reg[7]_0 ,
    \internalBit_reg[5]_0 ,
    \internalBit_reg[2]_0 ,
    \internalBit_reg[0]_1 ,
    \internalBit_reg[0]_2 ,
    E,
    CLK,
    AR,
    D,
    \internalBit_reg[7]_1 ,
    \internalBit_reg[7]_2 ,
    \internalBit_reg[7]_3 );
  output \internalBit_reg[4] ;
  output [7:0]Q;
  output \internalBit_reg[5] ;
  output \internalBit_reg[0] ;
  output \internalBit_reg[0]_0 ;
  output [7:0]\internalBit_reg[7] ;
  input \internalBit_reg[1] ;
  input \internalBit_reg[1]_0 ;
  input \internalBit_reg[1]_1 ;
  input \internalBit_reg[2] ;
  input \internalBit_reg[3] ;
  input \internalBit_reg[4]_0 ;
  input \internalBit_reg[6] ;
  input \internalBit_reg[7]_0 ;
  input \internalBit_reg[5]_0 ;
  input \internalBit_reg[2]_0 ;
  input \internalBit_reg[0]_1 ;
  input \internalBit_reg[0]_2 ;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input [1:0]D;
  input [0:0]\internalBit_reg[7]_1 ;
  input [0:0]\internalBit_reg[7]_2 ;
  input [0:0]\internalBit_reg[7]_3 ;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]D;
  wire [7:1]DA;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]internalBit;
  wire \internalBit_reg[0] ;
  wire \internalBit_reg[0]_0 ;
  wire \internalBit_reg[0]_1 ;
  wire \internalBit_reg[0]_2 ;
  wire \internalBit_reg[1] ;
  wire \internalBit_reg[1]_0 ;
  wire \internalBit_reg[1]_1 ;
  wire \internalBit_reg[2] ;
  wire \internalBit_reg[2]_0 ;
  wire \internalBit_reg[3] ;
  wire \internalBit_reg[4] ;
  wire \internalBit_reg[4]_0 ;
  wire \internalBit_reg[5] ;
  wire \internalBit_reg[5]_0 ;
  wire \internalBit_reg[6] ;
  wire [7:0]\internalBit_reg[7] ;
  wire \internalBit_reg[7]_0 ;
  wire [0:0]\internalBit_reg[7]_1 ;
  wire [0:0]\internalBit_reg[7]_2 ;
  wire [0:0]\internalBit_reg[7]_3 ;
  wire uA_n_1;
  wire uA_n_15;
  wire uA_n_2;
  wire uA_n_3;
  wire uA_n_4;
  wire uA_n_6;
  wire uB_n_20;
  wire uB_n_5;
  wire uB_n_6;
  wire uB_n_7;
  wire uB_n_8;
  wire uD_n_0;
  wire uD_n_1;
  wire uD_n_10;
  wire uD_n_2;
  wire uD_n_3;
  wire uD_n_4;
  wire uD_n_5;
  wire uD_n_6;
  wire uD_n_7;
  wire uD_n_8;
  wire uD_n_9;

  A uA
       (.AR(AR),
        .CLK(CLK),
        .D(DA[7]),
        .Q(Q),
        .\internalBit[7]_i_11_0 (\internalBit_reg[2]_0 ),
        .\internalBit[7]_i_11_1 (\internalBit_reg[0]_0 ),
        .\internalBit[7]_i_11_2 (uB_n_5),
        .\internalBit[7]_i_11_3 (uD_n_9),
        .\internalBit[7]_i_7_0 (uB_n_7),
        .\internalBit[7]_i_7_1 (uB_n_6),
        .\internalBit[7]_i_7_2 (uD_n_0),
        .\internalBit_reg[0]_0 (\internalBit_reg[0] ),
        .\internalBit_reg[0]_1 (\internalBit_reg[5]_0 ),
        .\internalBit_reg[1]_0 (uA_n_6),
        .\internalBit_reg[2]_0 (uA_n_15),
        .\internalBit_reg[3]_0 (uA_n_4),
        .\internalBit_reg[4]_0 (uA_n_3),
        .\internalBit_reg[5]_0 (uA_n_2),
        .\internalBit_reg[6]_0 (uA_n_1),
        .\internalBit_reg[6]_1 ({DA[6],D[1],DA[4:1],D[0]}),
        .\internalBit_reg[7]_0 (\internalBit_reg[7]_0 ),
        .\internalBit_reg[7]_1 (\internalBit_reg[1]_0 ),
        .\internalBit_reg[7]_2 (\internalBit_reg[1]_1 ),
        .\internalBit_reg[7]_3 (uB_n_20),
        .\internalBit_reg[7]_4 (uB_n_8),
        .\internalBit_reg[7]_5 (\internalBit_reg[5] ),
        .\internalBit_reg[7]_6 (internalBit),
        .\internalBit_reg[7]_7 (\internalBit_reg[7]_3 ));
  B uB
       (.AR(AR),
        .CLK(CLK),
        .D({DA[6],DA[4:1]}),
        .Q(Q),
        .\internalBit_reg[0]_0 (\internalBit_reg[0]_0 ),
        .\internalBit_reg[0]_1 (\internalBit_reg[0]_1 ),
        .\internalBit_reg[0]_2 (\internalBit_reg[0]_2 ),
        .\internalBit_reg[1]_0 (uB_n_5),
        .\internalBit_reg[1]_1 (\internalBit_reg[1] ),
        .\internalBit_reg[1]_2 (\internalBit_reg[1]_0 ),
        .\internalBit_reg[1]_3 (uA_n_6),
        .\internalBit_reg[1]_4 (\internalBit_reg[1]_1 ),
        .\internalBit_reg[2]_0 (\internalBit_reg[2] ),
        .\internalBit_reg[2]_1 (uA_n_15),
        .\internalBit_reg[2]_2 (\internalBit_reg[0] ),
        .\internalBit_reg[2]_3 (\internalBit_reg[2]_0 ),
        .\internalBit_reg[3]_0 (uB_n_6),
        .\internalBit_reg[3]_1 (\internalBit_reg[3] ),
        .\internalBit_reg[3]_2 (uA_n_4),
        .\internalBit_reg[4]_0 (uB_n_7),
        .\internalBit_reg[4]_1 (\internalBit_reg[4] ),
        .\internalBit_reg[4]_2 (\internalBit_reg[4]_0 ),
        .\internalBit_reg[4]_3 (uA_n_3),
        .\internalBit_reg[5]_0 (\internalBit_reg[5] ),
        .\internalBit_reg[5]_1 (\internalBit_reg[5]_0 ),
        .\internalBit_reg[5]_2 ({internalBit[4],internalBit[2],internalBit[0]}),
        .\internalBit_reg[5]_3 (uD_n_10),
        .\internalBit_reg[6]_0 (uB_n_8),
        .\internalBit_reg[6]_1 (\internalBit_reg[6] ),
        .\internalBit_reg[6]_2 (uA_n_1),
        .\internalBit_reg[6]_3 (uA_n_2),
        .\internalBit_reg[7]_0 (\internalBit_reg[7] ),
        .\internalBit_reg[7]_1 (uB_n_20),
        .\internalBit_reg[7]_2 ({uD_n_1,uD_n_2,uD_n_3,uD_n_4,uD_n_5,uD_n_6,uD_n_7,uD_n_8}),
        .\internalBit_reg[7]_3 (\internalBit_reg[7]_2 ),
        .\internalBit_reg[7]_4 ({DA[7],D}));
  C uC
       (.AR(AR),
        .CLK(CLK),
        .D({DA[7:6],D[1],DA[4:1],D[0]}),
        .Q(internalBit),
        .\internalBit_reg[7]_0 (\internalBit_reg[7]_1 ));
  D uD
       (.AR(AR),
        .CLK(CLK),
        .D({DA[7:6],D[1],DA[4:1],D[0]}),
        .E(E),
        .Q({uD_n_1,uD_n_2,uD_n_3,uD_n_4,uD_n_5,uD_n_6,uD_n_7,uD_n_8}),
        .\internalBit[5]_i_4 ({\internalBit_reg[7] [5],\internalBit_reg[7] [2]}),
        .\internalBit[5]_i_4_0 ({internalBit[5],internalBit[2]}),
        .\internalBit[5]_i_4_1 (\internalBit_reg[0]_1 ),
        .\internalBit[5]_i_4_2 (\internalBit_reg[0]_2 ),
        .\internalBit[5]_i_4_3 ({Q[5],Q[2]}),
        .\internalBit_reg[2]_0 (uD_n_0),
        .\internalBit_reg[2]_1 (uD_n_9),
        .\internalBit_reg[5]_0 (uD_n_10));
endmodule

(* ECO_CHECKSUM = "1be15a63" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module full_assignment2
   (clk,
    reset,
    \input ,
    Out1,
    Out2,
    OPC,
    PC,
    State);
  input clk;
  input reset;
  input [7:0]\input ;
  output [7:0]Out1;
  output [7:0]Out2;
  output [3:0]OPC;
  output [3:0]PC;
  output [3:0]State;

  wire [5:0]DA;
  wire LoadA;
  wire LoadB;
  wire LoadC;
  wire LoadD;
  wire [3:0]OPC;
  wire [3:0]OPC_OBUF;
  wire [7:0]Out1;
  wire [7:0]Out1_OBUF;
  wire [7:0]Out2;
  wire [7:0]Out2_OBUF;
  wire [3:0]PC;
  wire [3:0]PC_OBUF;
  wire [3:0]State;
  wire [3:0]State_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]\input ;
  wire \internalBit_reg[0]_i_2_n_0 ;
  wire \internalBit_reg[1]_i_2_n_0 ;
  wire \internalBit_reg[2]_i_2_n_0 ;
  wire \internalBit_reg[3]_i_2_n_0 ;
  wire \internalBit_reg[4]_i_2_n_0 ;
  wire \internalBit_reg[5]_i_2_n_0 ;
  wire \internalBit_reg[6]_i_2_n_0 ;
  wire \internalBit_reg[7]_i_4_n_0 ;
  wire lopt;
  wire reset;
  wire reset_IBUF;
  wire uControl_n_12;
  wire uControl_n_13;
  wire uControl_n_15;
  wire uControl_n_16;
  wire uControl_n_23;
  wire uControl_n_4;
  wire uDatapath_n_0;
  wire uDatapath_n_10;
  wire uDatapath_n_11;
  wire uDatapath_n_9;
  wire [3:3]NLW_uControl_OPC_OBUF_UNCONNECTED;

initial begin
 $sdf_annotate("tb_full_assignment2_time_impl.sdf",,,,"tool_control");
end
  OBUF \OPC_OBUF[0]_inst 
       (.I(OPC_OBUF[0]),
        .O(OPC[0]));
  OBUF \OPC_OBUF[1]_inst 
       (.I(OPC_OBUF[1]),
        .O(OPC[1]));
  OBUF \OPC_OBUF[2]_inst 
       (.I(OPC_OBUF[2]),
        .O(OPC[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \OPC_OBUF[3]_inst 
       (.I(lopt),
        .O(OPC[3]));
  OBUF \Out1_OBUF[0]_inst 
       (.I(Out1_OBUF[0]),
        .O(Out1[0]));
  OBUF \Out1_OBUF[1]_inst 
       (.I(Out1_OBUF[1]),
        .O(Out1[1]));
  OBUF \Out1_OBUF[2]_inst 
       (.I(Out1_OBUF[2]),
        .O(Out1[2]));
  OBUF \Out1_OBUF[3]_inst 
       (.I(Out1_OBUF[3]),
        .O(Out1[3]));
  OBUF \Out1_OBUF[4]_inst 
       (.I(Out1_OBUF[4]),
        .O(Out1[4]));
  OBUF \Out1_OBUF[5]_inst 
       (.I(Out1_OBUF[5]),
        .O(Out1[5]));
  OBUF \Out1_OBUF[6]_inst 
       (.I(Out1_OBUF[6]),
        .O(Out1[6]));
  OBUF \Out1_OBUF[7]_inst 
       (.I(Out1_OBUF[7]),
        .O(Out1[7]));
  OBUF \Out2_OBUF[0]_inst 
       (.I(Out2_OBUF[0]),
        .O(Out2[0]));
  OBUF \Out2_OBUF[1]_inst 
       (.I(Out2_OBUF[1]),
        .O(Out2[1]));
  OBUF \Out2_OBUF[2]_inst 
       (.I(Out2_OBUF[2]),
        .O(Out2[2]));
  OBUF \Out2_OBUF[3]_inst 
       (.I(Out2_OBUF[3]),
        .O(Out2[3]));
  OBUF \Out2_OBUF[4]_inst 
       (.I(Out2_OBUF[4]),
        .O(Out2[4]));
  OBUF \Out2_OBUF[5]_inst 
       (.I(Out2_OBUF[5]),
        .O(Out2[5]));
  OBUF \Out2_OBUF[6]_inst 
       (.I(Out2_OBUF[6]),
        .O(Out2[6]));
  OBUF \Out2_OBUF[7]_inst 
       (.I(Out2_OBUF[7]),
        .O(Out2[7]));
  OBUF \PC_OBUF[0]_inst 
       (.I(PC_OBUF[0]),
        .O(PC[0]));
  OBUF \PC_OBUF[1]_inst 
       (.I(PC_OBUF[1]),
        .O(PC[1]));
  OBUF \PC_OBUF[2]_inst 
       (.I(PC_OBUF[2]),
        .O(PC[2]));
  OBUF \PC_OBUF[3]_inst 
       (.I(PC_OBUF[3]),
        .O(PC[3]));
  OBUF \State_OBUF[0]_inst 
       (.I(State_OBUF[0]),
        .O(State[0]));
  OBUF \State_OBUF[1]_inst 
       (.I(State_OBUF[1]),
        .O(State[1]));
  OBUF \State_OBUF[2]_inst 
       (.I(State_OBUF[2]),
        .O(State[2]));
  OBUF \State_OBUF[3]_inst 
       (.I(State_OBUF[3]),
        .O(State[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \internalBit_reg[0]_i_2 
       (.I(\input [0]),
        .O(\internalBit_reg[0]_i_2_n_0 ));
  IBUF \internalBit_reg[1]_i_2 
       (.I(\input [1]),
        .O(\internalBit_reg[1]_i_2_n_0 ));
  IBUF \internalBit_reg[2]_i_2 
       (.I(\input [2]),
        .O(\internalBit_reg[2]_i_2_n_0 ));
  IBUF \internalBit_reg[3]_i_2 
       (.I(\input [3]),
        .O(\internalBit_reg[3]_i_2_n_0 ));
  IBUF \internalBit_reg[4]_i_2 
       (.I(\input [4]),
        .O(\internalBit_reg[4]_i_2_n_0 ));
  IBUF \internalBit_reg[5]_i_2 
       (.I(\input [5]),
        .O(\internalBit_reg[5]_i_2_n_0 ));
  IBUF \internalBit_reg[6]_i_2 
       (.I(\input [6]),
        .O(\internalBit_reg[6]_i_2_n_0 ));
  IBUF \internalBit_reg[7]_i_4 
       (.I(\input [7]),
        .O(\internalBit_reg[7]_i_4_n_0 ));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  stateMachine uControl
       (.AR(reset_IBUF),
        .\ASM_input_reg[0]_0 (LoadB),
        .\ASM_input_reg[1]_0 (uControl_n_16),
        .\ASM_input_reg[1]_1 (LoadA),
        .\ASM_input_reg[2]_0 (LoadC),
        .\ASM_input_reg[3]_0 (uControl_n_12),
        .D({DA[5],DA[0]}),
        .E(LoadD),
        .\FSM_onehot_state_reg[1]_0 (uControl_n_13),
        .\FSM_onehot_state_reg[1]_1 (uControl_n_15),
        .\FSM_onehot_state_reg[4]_0 (uControl_n_4),
        .\FSM_onehot_state_reg[4]_1 (uControl_n_23),
        .OPC_OBUF({NLW_uControl_OPC_OBUF_UNCONNECTED[3],OPC_OBUF[2:0]}),
        .PC_OBUF(PC_OBUF),
        .State_OBUF(State_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\internalBit_reg[0] (\internalBit_reg[0]_i_2_n_0 ),
        .\internalBit_reg[0]_0 (uDatapath_n_11),
        .\internalBit_reg[0]_1 (uDatapath_n_10),
        .\internalBit_reg[5] (\internalBit_reg[5]_i_2_n_0 ),
        .\internalBit_reg[5]_0 (uDatapath_n_9),
        .\internalBit_reg[5]_1 (uDatapath_n_0),
        .lopt(lopt));
  Datapath uDatapath
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({DA[5],DA[0]}),
        .E(LoadD),
        .Q(Out1_OBUF),
        .\internalBit_reg[0] (uDatapath_n_10),
        .\internalBit_reg[0]_0 (uDatapath_n_11),
        .\internalBit_reg[0]_1 (uControl_n_23),
        .\internalBit_reg[0]_2 (uControl_n_16),
        .\internalBit_reg[1] (\internalBit_reg[1]_i_2_n_0 ),
        .\internalBit_reg[1]_0 (uControl_n_12),
        .\internalBit_reg[1]_1 (uControl_n_13),
        .\internalBit_reg[2] (\internalBit_reg[2]_i_2_n_0 ),
        .\internalBit_reg[2]_0 (uControl_n_4),
        .\internalBit_reg[3] (\internalBit_reg[3]_i_2_n_0 ),
        .\internalBit_reg[4] (uDatapath_n_0),
        .\internalBit_reg[4]_0 (\internalBit_reg[4]_i_2_n_0 ),
        .\internalBit_reg[5] (uDatapath_n_9),
        .\internalBit_reg[5]_0 (uControl_n_15),
        .\internalBit_reg[6] (\internalBit_reg[6]_i_2_n_0 ),
        .\internalBit_reg[7] (Out2_OBUF),
        .\internalBit_reg[7]_0 (\internalBit_reg[7]_i_4_n_0 ),
        .\internalBit_reg[7]_1 (LoadC),
        .\internalBit_reg[7]_2 (LoadB),
        .\internalBit_reg[7]_3 (LoadA));
endmodule

module stateMachine
   (PC_OBUF,
    \FSM_onehot_state_reg[4]_0 ,
    OPC_OBUF,
    E,
    D,
    \ASM_input_reg[3]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \ASM_input_reg[0]_0 ,
    \FSM_onehot_state_reg[1]_1 ,
    \ASM_input_reg[1]_0 ,
    \ASM_input_reg[1]_1 ,
    \ASM_input_reg[2]_0 ,
    State_OBUF,
    \FSM_onehot_state_reg[4]_1 ,
    clk_IBUF_BUFG,
    \internalBit_reg[0] ,
    \internalBit_reg[0]_0 ,
    \internalBit_reg[0]_1 ,
    \internalBit_reg[5] ,
    \internalBit_reg[5]_0 ,
    \internalBit_reg[5]_1 ,
    AR,
    lopt);
  output [3:0]PC_OBUF;
  output \FSM_onehot_state_reg[4]_0 ;
  output [3:0]OPC_OBUF;
  output [0:0]E;
  output [1:0]D;
  output \ASM_input_reg[3]_0 ;
  output \FSM_onehot_state_reg[1]_0 ;
  output [0:0]\ASM_input_reg[0]_0 ;
  output \FSM_onehot_state_reg[1]_1 ;
  output \ASM_input_reg[1]_0 ;
  output [0:0]\ASM_input_reg[1]_1 ;
  output [0:0]\ASM_input_reg[2]_0 ;
  output [3:0]State_OBUF;
  output \FSM_onehot_state_reg[4]_1 ;
  input clk_IBUF_BUFG;
  input \internalBit_reg[0] ;
  input \internalBit_reg[0]_0 ;
  input \internalBit_reg[0]_1 ;
  input \internalBit_reg[5] ;
  input \internalBit_reg[5]_0 ;
  input \internalBit_reg[5]_1 ;
  input [0:0]AR;
  output lopt;

  wire [0:0]AR;
  wire [0:0]ASM_input;
  wire \ASM_input[0]_i_1_n_0 ;
  wire \ASM_input[1]_i_1_n_0 ;
  wire \ASM_input[2]_i_1_n_0 ;
  wire \ASM_input[3]_i_1_n_0 ;
  wire \ASM_input[3]_i_3_n_0 ;
  wire [0:0]\ASM_input_reg[0]_0 ;
  wire \ASM_input_reg[1]_0 ;
  wire [0:0]\ASM_input_reg[1]_1 ;
  wire [0:0]\ASM_input_reg[2]_0 ;
  wire \ASM_input_reg[3]_0 ;
  wire \ASM_input_reg[3]_lopt_replica_1 ;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  wire \FSM_onehot_state_reg[4]_1 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [3:0]OPC_OBUF;
  wire \PC[1]_i_1_n_0 ;
  wire [3:0]PC_OBUF;
  wire [0:0]PC__0;
  wire [3:0]State_OBUF;
  wire \State_OBUF[0]_inst_i_2_n_0 ;
  wire \State_OBUF[1]_inst_i_2_n_0 ;
  wire \State_OBUF[3]_inst_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \internalBit[7]_i_17_n_0 ;
  wire \internalBit[7]_i_18_n_0 ;
  wire \internalBit[7]_i_2__0_n_0 ;
  wire \internalBit[7]_i_3_n_0 ;
  wire \internalBit_reg[0] ;
  wire \internalBit_reg[0]_0 ;
  wire \internalBit_reg[0]_1 ;
  wire \internalBit_reg[5] ;
  wire \internalBit_reg[5]_0 ;
  wire \internalBit_reg[5]_1 ;
  wire [3:0]plusOp;

  assign lopt = \ASM_input_reg[3]_lopt_replica_1 ;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \ASM_input[0]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[2]),
        .O(\ASM_input[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \ASM_input[1]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .O(\ASM_input[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \ASM_input[2]_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .O(\ASM_input[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ASM_input[3]_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC__0),
        .O(\ASM_input[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ASM_input[3]_i_2 
       (.I0(PC__0),
        .O(ASM_input));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ASM_input[3]_i_3 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[2]),
        .O(\ASM_input[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ASM_input_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(ASM_input),
        .D(\ASM_input[0]_i_1_n_0 ),
        .Q(OPC_OBUF[0]),
        .R(\ASM_input[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ASM_input_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(ASM_input),
        .D(\ASM_input[1]_i_1_n_0 ),
        .Q(OPC_OBUF[1]),
        .R(\ASM_input[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ASM_input_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(ASM_input),
        .D(\ASM_input[2]_i_1_n_0 ),
        .Q(OPC_OBUF[2]),
        .R(\ASM_input[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ASM_input_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(ASM_input),
        .D(\ASM_input[3]_i_3_n_0 ),
        .Q(OPC_OBUF[3]),
        .R(\ASM_input[3]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ASM_input_reg[3]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(ASM_input),
        .D(\ASM_input[3]_i_3_n_0 ),
        .Q(\ASM_input_reg[3]_lopt_replica_1 ),
        .R(\ASM_input[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(PC__0),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(OPC_OBUF[0]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[3]),
        .I4(OPC_OBUF[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFAAAAAAAA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(OPC_OBUF[1]),
        .I2(OPC_OBUF[3]),
        .I3(OPC_OBUF[2]),
        .I4(OPC_OBUF[0]),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "st1_reset:00001,st2_decodeandexecute:00010,st4_execute:01000,st3_wait:10000,st5_wait:00100" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC__0),
        .S(AR));
  (* FSM_ENCODED_STATES = "st1_reset:00001,st2_decodeandexecute:00010,st4_execute:01000,st3_wait:10000,st5_wait:00100" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(AR));
  (* FSM_ENCODED_STATES = "st1_reset:00001,st2_decodeandexecute:00010,st4_execute:01000,st3_wait:10000,st5_wait:00100" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(AR));
  (* FSM_ENCODED_STATES = "st1_reset:00001,st2_decodeandexecute:00010,st4_execute:01000,st3_wait:10000,st5_wait:00100" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(AR));
  (* FSM_ENCODED_STATES = "st1_reset:00001,st2_decodeandexecute:00010,st4_execute:01000,st3_wait:10000,st5_wait:00100" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PC[0]_i_1 
       (.I0(PC_OBUF[0]),
        .O(plusOp[0]));
  LUT5 #(
    .INIT(32'hAEAEEEAE)) 
    \PC[1]_i_1 
       (.I0(\FSM_onehot_state_reg[4]_0 ),
        .I1(\internalBit[7]_i_3_n_0 ),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[0]),
        .I4(OPC_OBUF[1]),
        .O(\PC[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PC[1]_i_2 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \PC[2]_i_1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \PC[3]_i_1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[2]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\PC[1]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(PC_OBUF[0]),
        .R(PC__0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\PC[1]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(PC_OBUF[1]),
        .R(PC__0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\PC[1]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(PC_OBUF[2]),
        .R(PC__0));
  FDRE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\PC[1]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(PC_OBUF[3]),
        .R(PC__0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \State_OBUF[0]_inst_i_1 
       (.I0(\State_OBUF[0]_inst_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(PC__0),
        .O(State_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00088008)) 
    \State_OBUF[0]_inst_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(OPC_OBUF[0]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[3]),
        .I4(OPC_OBUF[1]),
        .O(\State_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \State_OBUF[1]_inst_i_1 
       (.I0(OPC_OBUF[1]),
        .I1(OPC_OBUF[3]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[0]),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\State_OBUF[1]_inst_i_2_n_0 ),
        .O(State_OBUF[1]));
  LUT6 #(
    .INIT(64'hAAEAAAAAAAEFAAAA)) 
    \State_OBUF[1]_inst_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(OPC_OBUF[0]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[1]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(OPC_OBUF[3]),
        .O(\State_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000C8080)) 
    \State_OBUF[2]_inst_i_1 
       (.I0(OPC_OBUF[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[3]),
        .I4(OPC_OBUF[1]),
        .O(State_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEEEFFFE)) 
    \State_OBUF[3]_inst_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\State_OBUF[3]_inst_i_2_n_0 ),
        .O(State_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \State_OBUF[3]_inst_i_2 
       (.I0(OPC_OBUF[1]),
        .I1(OPC_OBUF[3]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[0]),
        .O(\State_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8F8FF8F88F)) 
    \internalBit[0]_i_1 
       (.I0(\ASM_input_reg[3]_0 ),
        .I1(\internalBit_reg[0] ),
        .I2(\internalBit_reg[0]_0 ),
        .I3(\internalBit_reg[0]_1 ),
        .I4(\FSM_onehot_state_reg[4]_0 ),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00003230)) 
    \internalBit[0]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\State_OBUF[3]_inst_i_2_n_0 ),
        .O(\FSM_onehot_state_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \internalBit[5]_i_1 
       (.I0(\internalBit_reg[5] ),
        .I1(\ASM_input_reg[3]_0 ),
        .I2(\internalBit_reg[5]_0 ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(\internalBit_reg[5]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \internalBit[7]_i_1 
       (.I0(\internalBit[7]_i_3_n_0 ),
        .I1(OPC_OBUF[0]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFF0FFF3FFF0FFBF)) 
    \internalBit[7]_i_12 
       (.I0(\internalBit[7]_i_17_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\State_OBUF[3]_inst_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \internalBit[7]_i_13 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\State_OBUF[3]_inst_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h000A000030000000)) 
    \internalBit[7]_i_14 
       (.I0(\internalBit[7]_i_2__0_n_0 ),
        .I1(\internalBit[7]_i_18_n_0 ),
        .I2(OPC_OBUF[1]),
        .I3(OPC_OBUF[3]),
        .I4(OPC_OBUF[2]),
        .I5(OPC_OBUF[0]),
        .O(\ASM_input_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \internalBit[7]_i_17 
       (.I0(OPC_OBUF[0]),
        .I1(OPC_OBUF[1]),
        .I2(OPC_OBUF[2]),
        .I3(OPC_OBUF[3]),
        .O(\internalBit[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \internalBit[7]_i_18 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\internalBit[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \internalBit[7]_i_1__0 
       (.I0(\ASM_input_reg[3]_0 ),
        .I1(OPC_OBUF[0]),
        .I2(OPC_OBUF[1]),
        .O(\ASM_input_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAAABAABAAAAAAAA)) 
    \internalBit[7]_i_1__1 
       (.I0(\FSM_onehot_state_reg[4]_0 ),
        .I1(OPC_OBUF[1]),
        .I2(OPC_OBUF[0]),
        .I3(OPC_OBUF[2]),
        .I4(OPC_OBUF[3]),
        .I5(\internalBit[7]_i_2__0_n_0 ),
        .O(\ASM_input_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008200)) 
    \internalBit[7]_i_1__2 
       (.I0(\internalBit[7]_i_2__0_n_0 ),
        .I1(OPC_OBUF[2]),
        .I2(OPC_OBUF[3]),
        .I3(OPC_OBUF[1]),
        .I4(OPC_OBUF[0]),
        .O(\ASM_input_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \internalBit[7]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\internalBit[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \internalBit[7]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(OPC_OBUF[3]),
        .O(\internalBit[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \internalBit[7]_i_5 
       (.I0(OPC_OBUF[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(OPC_OBUF[2]),
        .O(\ASM_input_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \internalBit[7]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\State_OBUF[3]_inst_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg[1]_0 ));
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
