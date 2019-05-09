// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  8 16:19:02 2019
// Host        : ENG-9080GB2 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               H:/EECS_443/UART_Controller/UART_Controller.sim/sim_1/synth/timing/xsim/uart_tx_test_time_synth.v
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_divider
   (CLK,
    clk_IBUF_BUFG);
  output CLK;
  input clk_IBUF_BUFG;

  wire CLK;
  wire clk_IBUF_BUFG;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire [13:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[13]_i_1_n_0 ;
  wire \count[13]_i_3_n_0 ;
  wire \count[13]_i_4_n_0 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire [13:1]data0;
  wire [3:0]\NLW_count_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[13]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAA8AAAAA55755555)) 
    clk_out_i_1
       (.I0(\count[13]_i_3_n_0 ),
        .I1(clk_out_i_2_n_0),
        .I2(count[3]),
        .I3(count[5]),
        .I4(clk_out_i_3_n_0),
        .I5(CLK),
        .O(clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    clk_out_i_2
       (.I0(count[8]),
        .I1(count[9]),
        .I2(count[2]),
        .I3(count[4]),
        .I4(count[0]),
        .I5(count[1]),
        .O(clk_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    clk_out_i_3
       (.I0(count[10]),
        .I1(count[11]),
        .I2(count[6]),
        .I3(count[7]),
        .I4(count[13]),
        .I5(count[12]),
        .O(clk_out_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[13]_i_1 
       (.I0(\count[13]_i_3_n_0 ),
        .O(\count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \count[13]_i_3 
       (.I0(\count[13]_i_4_n_0 ),
        .I1(count[5]),
        .I2(count[3]),
        .I3(count[7]),
        .I4(count[6]),
        .I5(clk_out_i_2_n_0),
        .O(\count[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[13]_i_4 
       (.I0(count[11]),
        .I1(count[10]),
        .I2(count[13]),
        .I3(count[12]),
        .O(\count[13]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(count[10]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(count[11]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(count[12]),
        .R(\count[13]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(count[13]),
        .R(\count[13]_i_1_n_0 ));
  CARRY4 \count_reg[13]_i_2 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[13]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[13]_i_2_O_UNCONNECTED [3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,count[13]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(count[1]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(count[2]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(count[3]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(count[4]),
        .R(\count[13]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(count[5]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(count[6]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(count[7]),
        .R(\count[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(count[8]),
        .R(\count[13]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(count[9]),
        .R(\count[13]_i_1_n_0 ));
endmodule

module color_detector
   (out,
    \FSM_sequential_state_reg_reg[2]_0 ,
    \FSM_sequential_state_reg_reg[2]_1 ,
    \FSM_sequential_state_reg_reg[3]_0 ,
    red_led_OBUF,
    blue_led_OBUF,
    green_led_OBUF,
    Q,
    D,
    rx_busy,
    AR,
    \FSM_sequential_state_reg_reg[2]_2 ,
    \FSM_sequential_state_reg_reg[3]_1 ,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[3]_2 );
  output [3:0]out;
  output \FSM_sequential_state_reg_reg[2]_0 ;
  output \FSM_sequential_state_reg_reg[2]_1 ;
  output \FSM_sequential_state_reg_reg[3]_0 ;
  output red_led_OBUF;
  output blue_led_OBUF;
  output green_led_OBUF;
  input [2:0]Q;
  input [3:0]D;
  input rx_busy;
  input [0:0]AR;
  input \FSM_sequential_state_reg_reg[2]_2 ;
  input \FSM_sequential_state_reg_reg[3]_1 ;
  input \FSM_sequential_state_reg_reg[1]_0 ;
  input \FSM_sequential_state_reg_reg[0]_0 ;
  input \FSM_sequential_state_reg_reg[3]_2 ;

  wire [0:0]AR;
  wire [3:0]D;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_1 ;
  wire \FSM_sequential_state_reg_reg[2]_2 ;
  wire \FSM_sequential_state_reg_reg[3]_0 ;
  wire \FSM_sequential_state_reg_reg[3]_1 ;
  wire \FSM_sequential_state_reg_reg[3]_2 ;
  wire [2:0]Q;
  wire blue_led_OBUF;
  wire green_led_OBUF;
  wire \led_status[0]_i_1_n_0 ;
  wire \led_status[1]_i_1_n_0 ;
  wire \led_status_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire p_1_in;
  wire red_led_OBUF;
  wire rx_busy;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(out[1]),
        .I1(out[3]),
        .O(\FSM_sequential_state_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h008100000C000800)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(out[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\FSM_sequential_state_reg_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(out[0]),
        .I1(out[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_sequential_state_reg_reg[3]_0 ));
  (* FSM_ENCODED_STATES = "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDC_1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDC_1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(out[1]));
  (* FSM_ENCODED_STATES = "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDC_1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(out[2]));
  (* FSM_ENCODED_STATES = "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FDC_1" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    blue_led_OBUF_inst_i_1
       (.I0(p_1_in),
        .I1(\led_status_reg_n_0_[0] ),
        .O(blue_led_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    green_led_OBUF_inst_i_1
       (.I0(p_1_in),
        .I1(\led_status_reg_n_0_[0] ),
        .O(green_led_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_status[0]_i_1 
       (.I0(D[2]),
        .I1(\FSM_sequential_state_reg_reg[3]_2 ),
        .I2(\led_status_reg_n_0_[0] ),
        .O(\led_status[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \led_status[1]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[2]_2 ),
        .I1(\FSM_sequential_state_reg_reg[3]_1 ),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg_reg[0]_0 ),
        .I4(\FSM_sequential_state_reg_reg[3]_2 ),
        .I5(p_1_in),
        .O(\led_status[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_status_reg[0] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(\led_status[0]_i_1_n_0 ),
        .Q(\led_status_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \led_status_reg[1] 
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(AR),
        .D(\led_status[1]_i_1_n_0 ),
        .Q(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    red_led_OBUF_inst_i_1
       (.I0(\led_status_reg_n_0_[0] ),
        .I1(p_1_in),
        .O(red_led_OBUF));
endmodule

(* NotValidForBitStream *)
module top_level
   (clk,
    en,
    reset,
    tx_busy,
    red_led,
    blue_led,
    green_led,
    RsRx,
    RsTx);
  input clk;
  input en;
  input reset;
  output tx_busy;
  output red_led;
  output blue_led;
  output green_led;
  input RsRx;
  output RsTx;

  wire RsRx;
  wire RsRx_IBUF;
  wire RsTx;
  wire RsTx_OBUF;
  wire baud_clk;
  wire blue_led;
  wire blue_led_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]data;
  wire detector_n_0;
  wire detector_n_1;
  wire detector_n_2;
  wire detector_n_3;
  wire detector_n_4;
  wire detector_n_5;
  wire detector_n_6;
  wire green_led;
  wire green_led_OBUF;
  wire receiver_n_15;
  wire receiver_n_16;
  wire receiver_n_17;
  wire receiver_n_5;
  wire receiver_n_6;
  wire red_led;
  wire red_led_OBUF;
  wire reset;
  wire reset_IBUF;
  wire rx_busy;
  wire [3:2]state_next;
  wire [1:0]state_next__0;
  wire tx_busy;
  wire tx_busy_OBUF;

initial begin
 $sdf_annotate("uart_tx_test_time_synth.sdf",,,,"tool_control");
end
  IBUF RsRx_IBUF_inst
       (.I(RsRx),
        .O(RsRx_IBUF));
  OBUF RsTx_OBUF_inst
       (.I(RsTx_OBUF),
        .O(RsTx));
  OBUF blue_led_OBUF_inst
       (.I(blue_led_OBUF),
        .O(blue_led));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  color_detector detector
       (.AR(reset_IBUF),
        .D({state_next,state_next__0}),
        .\FSM_sequential_state_reg_reg[0]_0 (receiver_n_15),
        .\FSM_sequential_state_reg_reg[1]_0 (receiver_n_6),
        .\FSM_sequential_state_reg_reg[2]_0 (detector_n_4),
        .\FSM_sequential_state_reg_reg[2]_1 (detector_n_5),
        .\FSM_sequential_state_reg_reg[2]_2 (receiver_n_5),
        .\FSM_sequential_state_reg_reg[3]_0 (detector_n_6),
        .\FSM_sequential_state_reg_reg[3]_1 (receiver_n_17),
        .\FSM_sequential_state_reg_reg[3]_2 (receiver_n_16),
        .Q({data[4],data[2],data[0]}),
        .blue_led_OBUF(blue_led_OBUF),
        .green_led_OBUF(green_led_OBUF),
        .out({detector_n_0,detector_n_1,detector_n_2,detector_n_3}),
        .red_led_OBUF(red_led_OBUF),
        .rx_busy(rx_busy));
  OBUF green_led_OBUF_inst
       (.I(green_led_OBUF),
        .O(green_led));
  clock_divider pulse_gen
       (.CLK(baud_clk),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  uart_rx receiver
       (.CLK(baud_clk),
        .D({state_next,state_next__0}),
        .\FSM_sequential_state_reg_reg[0] (detector_n_6),
        .\FSM_sequential_state_reg_reg[1] (receiver_n_15),
        .\FSM_sequential_state_reg_reg[1]_0 (detector_n_5),
        .\FSM_sequential_state_reg_reg[3] (receiver_n_5),
        .\FSM_sequential_state_reg_reg[3]_0 (receiver_n_6),
        .\FSM_sequential_state_reg_reg[3]_1 (detector_n_4),
        .Q(data),
        .RsRx(RsRx_IBUF),
        .\led_status_reg[1] (receiver_n_16),
        .\led_status_reg[1]_0 (receiver_n_17),
        .out({detector_n_0,detector_n_1,detector_n_2,detector_n_3}),
        .rx_busy(rx_busy));
  OBUF red_led_OBUF_inst
       (.I(red_led_OBUF),
        .O(red_led));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  uart_tx transmitter
       (.CLK(baud_clk),
        .D(data),
        .RsTx_OBUF(RsTx_OBUF),
        .rx_busy(rx_busy),
        .tx_busy_OBUF(tx_busy_OBUF));
  OBUF tx_busy_OBUF_inst
       (.I(tx_busy_OBUF),
        .O(tx_busy));
endmodule

module uart_rx
   (rx_busy,
    D,
    \FSM_sequential_state_reg_reg[3] ,
    \FSM_sequential_state_reg_reg[3]_0 ,
    Q,
    \FSM_sequential_state_reg_reg[1] ,
    \led_status_reg[1] ,
    \led_status_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[0] ,
    out,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[3]_1 ,
    RsRx,
    CLK);
  output rx_busy;
  output [3:0]D;
  output \FSM_sequential_state_reg_reg[3] ;
  output \FSM_sequential_state_reg_reg[3]_0 ;
  output [7:0]Q;
  output \FSM_sequential_state_reg_reg[1] ;
  output \led_status_reg[1] ;
  output \led_status_reg[1]_0 ;
  input \FSM_sequential_state_reg_reg[0] ;
  input [3:0]out;
  input \FSM_sequential_state_reg_reg[1]_0 ;
  input \FSM_sequential_state_reg_reg[3]_1 ;
  input [0:0]RsRx;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire \FSM_onehot_SM_Main[0]_i_1_n_0 ;
  wire \FSM_onehot_SM_Main[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_SM_Main_reg_n_0_[8] ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_7_n_0 ;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire \FSM_sequential_state_reg_reg[3]_0 ;
  wire \FSM_sequential_state_reg_reg[3]_1 ;
  wire [7:0]Q;
  wire [0:0]RsRx;
  wire busy_buff;
  wire busy_buff_reg_i_2_n_0;
  wire \led_status[1]_i_4_n_0 ;
  wire \led_status[1]_i_5_n_0 ;
  wire \led_status_reg[1] ;
  wire \led_status_reg[1]_0 ;
  wire [3:0]out;
  (* RTL_KEEP = "yes" *) wire rx_buff;
  wire rx_busy;
  wire [7:0]rx_vect;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_SM_Main[0]_i_1 
       (.I0(rx_buff),
        .I1(RsRx),
        .I2(\FSM_onehot_SM_Main_reg_n_0_[0] ),
        .O(\FSM_onehot_SM_Main[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_SM_Main[1]_i_1 
       (.I0(\FSM_onehot_SM_Main_reg_n_0_[0] ),
        .I1(RsRx),
        .O(\FSM_onehot_SM_Main[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_SM_Main_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main[0]_i_1_n_0 ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main[1]_i_1_n_0 ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[1] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[2] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[3] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[4] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[5] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[6] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[6] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[7] ),
        .Q(\FSM_onehot_SM_Main_reg_n_0_[8] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_SM_Main_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_SM_Main_reg_n_0_[8] ),
        .Q(rx_buff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEFEEEFFFFFEEE)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg_reg[3] ),
        .I4(\FSM_sequential_state_reg[0]_i_5_n_0 ),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I1(out[3]),
        .I2(out[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_sequential_state_reg[0]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[2]),
        .I3(\FSM_sequential_state_reg[0]_i_7_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[1]_0 ),
        .I5(\FSM_sequential_state_reg_reg[1] ),
        .O(\FSM_sequential_state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_sequential_state_reg[0]_i_4 
       (.I0(out[3]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(out[0]),
        .I5(\FSM_sequential_state_reg[0]_i_7_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state_reg[0]_i_5 
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(\FSM_sequential_state_reg[0]_i_8_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\FSM_sequential_state_reg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_state_reg[0]_i_6 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[3]),
        .O(\FSM_sequential_state_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_reg[0]_i_7 
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(\FSM_sequential_state_reg[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_reg[0]_i_8 
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(\FSM_sequential_state_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(out[1]),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[1] ),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00400C00)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(out[2]),
        .I1(\FSM_sequential_state_reg[3]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(out[3]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(out[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000450000)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(\FSM_sequential_state_reg_reg[1]_0 ),
        .I1(Q[4]),
        .I2(out[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(Q[1]),
        .I3(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[3]_1 ),
        .I5(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(out[0]),
        .O(\FSM_sequential_state_reg_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0420)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(out[2]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\FSM_sequential_state_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88F8000088880000)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[3] ),
        .I1(\FSM_sequential_state_reg_reg[0] ),
        .I2(\FSM_sequential_state_reg_reg[3]_0 ),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[3]_i_5_n_0 ),
        .I5(out[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00181008)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(Q[0]),
        .I1(out[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(out[1]),
        .O(\FSM_sequential_state_reg_reg[3] ));
  LUT6 #(
    .INIT(64'h0F0000F200000002)) 
    \FSM_sequential_state_reg[3]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_i_6_n_0 ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(Q[4]),
        .I5(\FSM_sequential_state_reg[3]_i_7_n_0 ),
        .O(\FSM_sequential_state_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state_reg[3]_i_5 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\FSM_sequential_state_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state_reg[3]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_state_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_state_reg[3]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(Q[2]),
        .O(\FSM_sequential_state_reg[3]_i_7_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    busy_buff_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_SM_Main_reg_n_0_[1] ),
        .G(busy_buff),
        .GE(1'b1),
        .Q(rx_busy));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    busy_buff_reg_i_1
       (.I0(\FSM_onehot_SM_Main_reg_n_0_[1] ),
        .I1(busy_buff_reg_i_2_n_0),
        .I2(rx_buff),
        .I3(\FSM_onehot_SM_Main_reg_n_0_[8] ),
        .I4(\FSM_onehot_SM_Main_reg_n_0_[6] ),
        .I5(\FSM_onehot_SM_Main_reg_n_0_[7] ),
        .O(busy_buff));
  LUT4 #(
    .INIT(16'hFFFE)) 
    busy_buff_reg_i_2
       (.I0(\FSM_onehot_SM_Main_reg_n_0_[4] ),
        .I1(\FSM_onehot_SM_Main_reg_n_0_[5] ),
        .I2(\FSM_onehot_SM_Main_reg_n_0_[2] ),
        .I3(\FSM_onehot_SM_Main_reg_n_0_[3] ),
        .O(busy_buff_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \led_status[1]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_i_7_n_0 ),
        .I1(out[3]),
        .I2(out[0]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\led_status_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF088008800880088)) 
    \led_status[1]_i_3 
       (.I0(\led_status[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg_reg[1] ),
        .I2(\led_status[1]_i_5_n_0 ),
        .I3(out[3]),
        .I4(\FSM_sequential_state_reg[3]_i_5_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .O(\led_status_reg[1] ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \led_status[1]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(\led_status[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h03000040)) 
    \led_status[1]_i_5 
       (.I0(out[1]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(out[2]),
        .I4(Q[0]),
        .O(\led_status[1]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[0] 
       (.CLR(1'b0),
        .D(rx_vect[0]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[1] 
       (.CLR(1'b0),
        .D(rx_vect[1]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[2] 
       (.CLR(1'b0),
        .D(rx_vect[2]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[3] 
       (.CLR(1'b0),
        .D(rx_vect[3]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[4] 
       (.CLR(1'b0),
        .D(rx_vect[4]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[5] 
       (.CLR(1'b0),
        .D(rx_vect[5]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[6] 
       (.CLR(1'b0),
        .D(rx_vect[6]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_buff_reg[7] 
       (.CLR(1'b0),
        .D(rx_vect[7]),
        .G(rx_buff),
        .GE(1'b1),
        .Q(Q[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[0] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[1] ),
        .GE(1'b1),
        .Q(rx_vect[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[1] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[2] ),
        .GE(1'b1),
        .Q(rx_vect[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[2] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[3] ),
        .GE(1'b1),
        .Q(rx_vect[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[3] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[4] ),
        .GE(1'b1),
        .Q(rx_vect[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[4] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[5] ),
        .GE(1'b1),
        .Q(rx_vect[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[5] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[6] ),
        .GE(1'b1),
        .Q(rx_vect[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[6] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[7] ),
        .GE(1'b1),
        .Q(rx_vect[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rx_vect_reg[7] 
       (.CLR(1'b0),
        .D(RsRx),
        .G(\FSM_onehot_SM_Main_reg_n_0_[8] ),
        .GE(1'b1),
        .Q(rx_vect[7]));
endmodule

module uart_tx
   (tx_busy_OBUF,
    RsTx_OBUF,
    rx_busy,
    D,
    CLK);
  output tx_busy_OBUF;
  output RsTx_OBUF;
  input rx_busy;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire RsTx_OBUF;
  wire RsTx_OBUF_inst_i_2_n_0;
  wire RsTx_OBUF_inst_i_3_n_0;
  wire \index[0]_i_1_n_0 ;
  wire [3:0]index_reg__0;
  wire isBusy_reg_i_1_n_0;
  wire [9:2]\output ;
  wire [3:1]p_0_in;
  wire rx_busy;
  wire sel;
  wire start;
  wire tx_busy_OBUF;

  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    RsTx_OBUF_inst_i_1
       (.I0(index_reg__0[1]),
        .I1(\output [8]),
        .I2(index_reg__0[0]),
        .I3(\output [9]),
        .I4(index_reg__0[3]),
        .I5(RsTx_OBUF_inst_i_2_n_0),
        .O(RsTx_OBUF));
  LUT6 #(
    .INIT(64'hB8B88888BB88BBBB)) 
    RsTx_OBUF_inst_i_2
       (.I0(RsTx_OBUF_inst_i_3_n_0),
        .I1(index_reg__0[2]),
        .I2(\output [3]),
        .I3(\output [2]),
        .I4(index_reg__0[1]),
        .I5(index_reg__0[0]),
        .O(RsTx_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    RsTx_OBUF_inst_i_3
       (.I0(\output [7]),
        .I1(\output [6]),
        .I2(index_reg__0[1]),
        .I3(\output [5]),
        .I4(index_reg__0[0]),
        .I5(\output [4]),
        .O(RsTx_OBUF_inst_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg__0[0]),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .I2(index_reg__0[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \index[3]_i_1 
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[3]),
        .I2(index_reg__0[0]),
        .I3(index_reg__0[2]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_2 
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[2]),
        .I3(index_reg__0[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[0] 
       (.C(CLK),
        .CE(sel),
        .CLR(start),
        .D(\index[0]_i_1_n_0 ),
        .Q(index_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[1] 
       (.C(CLK),
        .CE(sel),
        .CLR(start),
        .D(p_0_in[1]),
        .Q(index_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[2] 
       (.C(CLK),
        .CE(sel),
        .CLR(start),
        .D(p_0_in[2]),
        .Q(index_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \index_reg[3] 
       (.C(CLK),
        .CE(sel),
        .CLR(start),
        .D(p_0_in[3]),
        .Q(index_reg__0[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    isBusy_reg
       (.D(1'b0),
        .G(isBusy_reg_i_1_n_0),
        .GE(1'b1),
        .PRE(start),
        .Q(tx_busy_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    isBusy_reg_i_1
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[3]),
        .I3(index_reg__0[1]),
        .O(isBusy_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[2] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[0]),
        .Q(\output [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[3] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[1]),
        .Q(\output [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[4] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[2]),
        .Q(\output [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[5] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[3]),
        .Q(\output [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[6] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[4]),
        .Q(\output [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[7] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[5]),
        .Q(\output [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[8] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[6]),
        .Q(\output [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[9] 
       (.C(rx_busy),
        .CE(1'b1),
        .D(D[7]),
        .Q(\output [9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    start_reg
       (.C(rx_busy),
        .CE(1'b1),
        .CLR(tx_busy_OBUF),
        .D(1'b1),
        .Q(start));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
