-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May  8 14:24:22 2019
-- Host        : ENG-9080GB2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               H:/EECS_443/UART_Controller/UART_Controller.sim/sim_1/impl/func/xsim/top_level_func_impl.vhd
-- Design      : top_level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_divider is
  port (
    CLK : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end clock_divider;

architecture STRUCTURE of clock_divider is
  signal \^clk\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal clk_out_i_3_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_1_n_0\ : STD_LOGIC;
  signal \count[13]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  CLK <= \^clk\;
clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55455555AABAAAAA"
    )
        port map (
      I0 => \count[13]_i_1_n_0\,
      I1 => clk_out_i_2_n_0,
      I2 => count(3),
      I3 => count(5),
      I4 => clk_out_i_3_n_0,
      I5 => \^clk\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => count(8),
      I1 => count(9),
      I2 => count(2),
      I3 => count(4),
      I4 => count(0),
      I5 => count(1),
      O => clk_out_i_2_n_0
    );
clk_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => count(10),
      I1 => count(11),
      I2 => count(6),
      I3 => count(7),
      I4 => count(13),
      I5 => count(12),
      O => clk_out_i_3_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \count[13]_i_4_n_0\,
      I1 => count(5),
      I2 => count(3),
      I3 => count(7),
      I4 => count(6),
      I5 => clk_out_i_2_n_0,
      O => \count[13]_i_1_n_0\
    );
\count[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count(11),
      I1 => count(10),
      I2 => count(13),
      I3 => count(12),
      O => \count[13]_i_4_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => '0'
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(10),
      Q => count(10),
      R => \count[13]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(11),
      Q => count(11),
      R => \count[13]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(12),
      Q => count(12),
      R => \count[13]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count(12 downto 9)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(13),
      Q => count(13),
      R => \count[13]_i_1_n_0\
    );
\count_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_count_reg[13]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_count_reg[13]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => count(13)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(1),
      Q => count(1),
      R => \count[13]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(2),
      Q => count(2),
      R => \count[13]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(3),
      Q => count(3),
      R => \count[13]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(4),
      Q => count(4),
      R => \count[13]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count(4 downto 1)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(5),
      Q => count(5),
      R => \count[13]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(6),
      Q => count(6),
      R => \count[13]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(7),
      Q => count(7),
      R => \count[13]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(8),
      Q => count(8),
      R => \count[13]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count(8 downto 5)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data0(9),
      Q => count(9),
      R => \count[13]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity color_detector is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg_reg[2]_1\ : out STD_LOGIC;
    \FSM_sequential_state_reg_reg[3]_0\ : out STD_LOGIC;
    red_led_OBUF : out STD_LOGIC;
    blue_led_OBUF : out STD_LOGIC;
    green_led_OBUF : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_busy : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg_reg[2]_2\ : in STD_LOGIC;
    \FSM_sequential_state_reg_reg[3]_1\ : in STD_LOGIC;
    \FSM_sequential_state_reg_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg_reg[3]_2\ : in STD_LOGIC
  );
end color_detector;

architecture STRUCTURE of color_detector is
  signal \led_status[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_status[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_status_reg_n_0_[0]\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_1_in : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[0]\ : label is "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_state_reg_reg[0]\ : label is "FDC_1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[1]\ : label is "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101";
  attribute KEEP of \FSM_sequential_state_reg_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_state_reg_reg[1]\ : label is "FDC_1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[2]\ : label is "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101";
  attribute KEEP of \FSM_sequential_state_reg_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_state_reg_reg[2]\ : label is "FDC_1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[3]\ : label is "re:0011,red:0100,blue:1101,r:0010,bl:1011,blu:1100,b:1010,space:0001,idle:0000,green:1001,gre:0111,gree:1000,gr:0110,g:0101";
  attribute KEEP of \FSM_sequential_state_reg_reg[3]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_state_reg_reg[3]\ : label is "FDC_1";
begin
  \out\(3 downto 0) <= \^out\(3 downto 0);
\FSM_sequential_state_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(3),
      O => \FSM_sequential_state_reg_reg[2]_1\
    );
\FSM_sequential_state_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008100000C000800"
    )
        port map (
      I0 => \^out\(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^out\(2),
      I4 => \^out\(1),
      I5 => \^out\(0),
      O => \FSM_sequential_state_reg_reg[2]_0\
    );
\FSM_sequential_state_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(3),
      I2 => Q(2),
      I3 => Q(1),
      O => \FSM_sequential_state_reg_reg[3]_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => \^out\(0)
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => \^out\(1)
    );
\FSM_sequential_state_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => \^out\(2)
    );
\FSM_sequential_state_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => \^out\(3)
    );
blue_led_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in,
      I1 => \led_status_reg_n_0_[0]\,
      O => blue_led_OBUF
    );
green_led_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in,
      I1 => \led_status_reg_n_0_[0]\,
      O => green_led_OBUF
    );
\led_status[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => D(2),
      I1 => \FSM_sequential_state_reg_reg[3]_2\,
      I2 => \led_status_reg_n_0_[0]\,
      O => \led_status[0]_i_1_n_0\
    );
\led_status[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF8880000"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[2]_2\,
      I1 => \FSM_sequential_state_reg_reg[3]_1\,
      I2 => \FSM_sequential_state_reg_reg[1]_0\,
      I3 => \FSM_sequential_state_reg_reg[0]_0\,
      I4 => \FSM_sequential_state_reg_reg[3]_2\,
      I5 => p_1_in,
      O => \led_status[1]_i_1_n_0\
    );
\led_status_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => \led_status[0]_i_1_n_0\,
      Q => \led_status_reg_n_0_[0]\
    );
\led_status_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => AR(0),
      D => \led_status[1]_i_1_n_0\,
      Q => p_1_in
    );
red_led_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led_status_reg_n_0_[0]\,
      I1 => p_1_in,
      O => red_led_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_rx is
  port (
    rx_busy : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_state_reg_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_state_reg_reg[1]\ : out STD_LOGIC;
    \led_status_reg[1]\ : out STD_LOGIC;
    \led_status_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg_reg[0]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_reg_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_state_reg_reg[3]_1\ : in STD_LOGIC;
    RsRx : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end uart_rx;

architecture STRUCTURE of uart_rx is
  signal \FSM_onehot_SM_Main[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_SM_Main_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[5]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[6]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[6]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[7]\ : signal is "yes";
  signal \FSM_onehot_SM_Main_reg_n_0_[8]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_SM_Main_reg_n_0_[8]\ : signal is "yes";
  signal \FSM_sequential_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg_reg[1]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg_reg[3]\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg_reg[3]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \_inferred__1/i__n_0\ : STD_LOGIC;
  signal busy_buff : STD_LOGIC;
  signal \led_status[1]_i_4_n_0\ : STD_LOGIC;
  signal \led_status[1]_i_5_n_0\ : STD_LOGIC;
  signal rx_buff : STD_LOGIC;
  attribute RTL_KEEP of rx_buff : signal is "yes";
  signal rx_vect : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[0]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_SM_Main_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[1]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[2]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[3]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[4]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[5]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[6]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[7]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[7]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[8]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[8]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_SM_Main_reg[9]\ : label is "state_data2:0000001000,state_data3:0000010000,state_data1:0000000100,state_data0:0000000010,state_idle:0000000001,state_stop_bit:1000000000,state_data6:0010000000,state_data5:0001000000,state_data7:0100000000,state_data4:0000100000";
  attribute KEEP of \FSM_onehot_SM_Main_reg[9]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of busy_buff_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_buff_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \rx_vect_reg[7]\ : label is "LD";
begin
  \FSM_sequential_state_reg_reg[1]\ <= \^fsm_sequential_state_reg_reg[1]\;
  \FSM_sequential_state_reg_reg[3]\ <= \^fsm_sequential_state_reg_reg[3]\;
  \FSM_sequential_state_reg_reg[3]_0\ <= \^fsm_sequential_state_reg_reg[3]_0\;
  Q(7 downto 0) <= \^q\(7 downto 0);
\FSM_onehot_SM_Main[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_SM_Main_reg_n_0_[0]\,
      I1 => RsRx(0),
      O => \FSM_onehot_SM_Main[1]_i_1_n_0\
    );
\FSM_onehot_SM_Main_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \_inferred__1/i__n_0\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main[1]_i_1_n_0\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[1]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[2]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[3]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[4]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[5]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[6]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[7]\,
      Q => \FSM_onehot_SM_Main_reg_n_0_[8]\,
      R => '0'
    );
\FSM_onehot_SM_Main_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_SM_Main_reg_n_0_[8]\,
      Q => rx_buff,
      R => '0'
    );
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEFFFFFEEE"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[0]_i_3_n_0\,
      I2 => \FSM_sequential_state_reg[0]_i_4_n_0\,
      I3 => \^fsm_sequential_state_reg_reg[3]\,
      I4 => \FSM_sequential_state_reg[0]_i_5_n_0\,
      I5 => \^q\(0),
      O => D(0)
    );
\FSM_sequential_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I1 => \out\(3),
      I2 => \out\(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \FSM_sequential_state_reg[0]_i_6_n_0\,
      O => \FSM_sequential_state_reg[0]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \out\(2),
      I3 => \FSM_sequential_state_reg[0]_i_7_n_0\,
      I4 => \FSM_sequential_state_reg_reg[1]_0\,
      I5 => \^fsm_sequential_state_reg_reg[1]\,
      O => \FSM_sequential_state_reg[0]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \out\(3),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \out\(0),
      I5 => \FSM_sequential_state_reg[0]_i_7_n_0\,
      O => \FSM_sequential_state_reg[0]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(6),
      I2 => \FSM_sequential_state_reg[0]_i_8_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \FSM_sequential_state_reg[0]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(7),
      I3 => \^q\(3),
      O => \FSM_sequential_state_reg[0]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      O => \FSM_sequential_state_reg[0]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(7),
      O => \FSM_sequential_state_reg[0]_i_8_n_0\
    );
\FSM_sequential_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \out\(1),
      I3 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I4 => \^fsm_sequential_state_reg_reg[1]\,
      I5 => \FSM_sequential_state_reg[1]_i_4_n_0\,
      O => D(1)
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400C00"
    )
        port map (
      I0 => \out\(2),
      I1 => \FSM_sequential_state_reg[3]_i_5_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \out\(3),
      O => \FSM_sequential_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \out\(0),
      O => \FSM_sequential_state_reg[1]_i_3_n_0\
    );
\FSM_sequential_state_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000450000"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[1]_0\,
      I1 => \^q\(4),
      I2 => \out\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \FSM_sequential_state_reg[1]_i_4_n_0\
    );
\FSM_sequential_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF200020002000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg_reg[1]\,
      I1 => \FSM_sequential_state_reg_reg[1]_0\,
      I2 => \^q\(1),
      I3 => \FSM_sequential_state_reg[2]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg_reg[3]_1\,
      I5 => \FSM_sequential_state_reg[2]_i_6_n_0\,
      O => D(2)
    );
\FSM_sequential_state_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \out\(0),
      O => \^fsm_sequential_state_reg_reg[1]\
    );
\FSM_sequential_state_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \out\(2),
      O => \FSM_sequential_state_reg[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(7),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \FSM_sequential_state_reg[2]_i_6_n_0\
    );
\FSM_sequential_state_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8000088880000"
    )
        port map (
      I0 => \^fsm_sequential_state_reg_reg[3]\,
      I1 => \FSM_sequential_state_reg_reg[0]\,
      I2 => \^fsm_sequential_state_reg_reg[3]_0\,
      I3 => \^q\(3),
      I4 => \FSM_sequential_state_reg[3]_i_5_n_0\,
      I5 => \out\(0),
      O => D(3)
    );
\FSM_sequential_state_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00181008"
    )
        port map (
      I0 => \^q\(0),
      I1 => \out\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \out\(1),
      O => \^fsm_sequential_state_reg_reg[3]\
    );
\FSM_sequential_state_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0000F200000002"
    )
        port map (
      I0 => \FSM_sequential_state_reg[3]_i_6_n_0\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \out\(3),
      I4 => \^q\(4),
      I5 => \FSM_sequential_state_reg[3]_i_7_n_0\,
      O => \^fsm_sequential_state_reg_reg[3]_0\
    );
\FSM_sequential_state_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(6),
      O => \FSM_sequential_state_reg[3]_i_5_n_0\
    );
\FSM_sequential_state_reg[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \FSM_sequential_state_reg[3]_i_6_n_0\
    );
\FSM_sequential_state_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \out\(1),
      I3 => \^q\(2),
      O => \FSM_sequential_state_reg[3]_i_7_n_0\
    );
\_inferred__1/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rx_buff,
      I1 => RsRx(0),
      I2 => \FSM_onehot_SM_Main_reg_n_0_[0]\,
      O => \_inferred__1/i__n_0\
    );
busy_buff_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_SM_Main_reg_n_0_[1]\,
      G => busy_buff,
      GE => '1',
      Q => rx_busy
    );
busy_buff_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_SM_Main_reg_n_0_[1]\,
      I1 => rx_buff,
      O => busy_buff
    );
\led_status[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_i_7_n_0\,
      I1 => \out\(3),
      I2 => \out\(0),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(7),
      O => \led_status_reg[1]_0\
    );
\led_status[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088008800880088"
    )
        port map (
      I0 => \led_status[1]_i_4_n_0\,
      I1 => \^fsm_sequential_state_reg_reg[1]\,
      I2 => \led_status[1]_i_5_n_0\,
      I3 => \out\(3),
      I4 => \FSM_sequential_state_reg[3]_i_5_n_0\,
      I5 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      O => \led_status_reg[1]\
    );
\led_status[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \^q\(4),
      I5 => \^q\(2),
      O => \led_status[1]_i_4_n_0\
    );
\led_status[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03000040"
    )
        port map (
      I0 => \out\(1),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \out\(2),
      I4 => \^q\(0),
      O => \led_status[1]_i_5_n_0\
    );
\rx_buff_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(0),
      G => rx_buff,
      GE => '1',
      Q => \^q\(0)
    );
\rx_buff_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(1),
      G => rx_buff,
      GE => '1',
      Q => \^q\(1)
    );
\rx_buff_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(2),
      G => rx_buff,
      GE => '1',
      Q => \^q\(2)
    );
\rx_buff_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(3),
      G => rx_buff,
      GE => '1',
      Q => \^q\(3)
    );
\rx_buff_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(4),
      G => rx_buff,
      GE => '1',
      Q => \^q\(4)
    );
\rx_buff_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(5),
      G => rx_buff,
      GE => '1',
      Q => \^q\(5)
    );
\rx_buff_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(6),
      G => rx_buff,
      GE => '1',
      Q => \^q\(6)
    );
\rx_buff_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_vect(7),
      G => rx_buff,
      GE => '1',
      Q => \^q\(7)
    );
\rx_vect_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[1]\,
      GE => '1',
      Q => rx_vect(0)
    );
\rx_vect_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[2]\,
      GE => '1',
      Q => rx_vect(1)
    );
\rx_vect_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[3]\,
      GE => '1',
      Q => rx_vect(2)
    );
\rx_vect_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[4]\,
      GE => '1',
      Q => rx_vect(3)
    );
\rx_vect_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[5]\,
      GE => '1',
      Q => rx_vect(4)
    );
\rx_vect_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[6]\,
      GE => '1',
      Q => rx_vect(5)
    );
\rx_vect_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[7]\,
      GE => '1',
      Q => rx_vect(6)
    );
\rx_vect_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => RsRx(0),
      G => \FSM_onehot_SM_Main_reg_n_0_[8]\,
      GE => '1',
      Q => rx_vect(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_tx is
  port (
    tx_busy_OBUF : out STD_LOGIC;
    RsTx_OBUF : out STD_LOGIC;
    rx_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end uart_tx;

architecture STRUCTURE of uart_tx is
  signal RsTx_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal RsTx_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal isBusy_reg_i_1_n_0 : STD_LOGIC;
  signal output : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal sel : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \^tx_busy_obuf\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of isBusy_reg : label is "LDP";
begin
  tx_busy_OBUF <= \^tx_busy_obuf\;
RsTx_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => output(8),
      I2 => \index_reg__0\(0),
      I3 => output(9),
      I4 => \index_reg__0\(3),
      I5 => RsTx_OBUF_inst_i_2_n_0,
      O => RsTx_OBUF
    );
RsTx_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88888BB88BBBB"
    )
        port map (
      I0 => RsTx_OBUF_inst_i_3_n_0,
      I1 => \index_reg__0\(2),
      I2 => output(3),
      I3 => output(2),
      I4 => \index_reg__0\(1),
      I5 => \index_reg__0\(0),
      O => RsTx_OBUF_inst_i_2_n_0
    );
RsTx_OBUF_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output(7),
      I1 => output(6),
      I2 => \index_reg__0\(1),
      I3 => output(5),
      I4 => \index_reg__0\(0),
      I5 => output(4),
      O => RsTx_OBUF_inst_i_3_n_0
    );
\index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \index_reg__0\(0),
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => \index_reg__0\(1),
      O => p_0_in(1)
    );
\index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \index_reg__0\(0),
      I1 => \index_reg__0\(1),
      I2 => \index_reg__0\(2),
      O => p_0_in(2)
    );
\index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(3),
      I2 => \index_reg__0\(0),
      I3 => \index_reg__0\(2),
      O => sel
    );
\index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \index_reg__0\(1),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(2),
      I3 => \index_reg__0\(3),
      O => p_0_in(3)
    );
\index_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => start,
      D => \index[0]_i_1_n_0\,
      Q => \index_reg__0\(0)
    );
\index_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => start,
      D => p_0_in(1),
      Q => \index_reg__0\(1)
    );
\index_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => start,
      D => p_0_in(2),
      Q => \index_reg__0\(2)
    );
\index_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => start,
      D => p_0_in(3),
      Q => \index_reg__0\(3)
    );
isBusy_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => isBusy_reg_i_1_n_0,
      GE => '1',
      PRE => start,
      Q => \^tx_busy_obuf\
    );
isBusy_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \index_reg__0\(2),
      I1 => \index_reg__0\(0),
      I2 => \index_reg__0\(3),
      I3 => \index_reg__0\(1),
      O => isBusy_reg_i_1_n_0
    );
\output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(0),
      Q => output(2),
      R => '0'
    );
\output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(1),
      Q => output(3),
      R => '0'
    );
\output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(2),
      Q => output(4),
      R => '0'
    );
\output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(3),
      Q => output(5),
      R => '0'
    );
\output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(4),
      Q => output(6),
      R => '0'
    );
\output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(5),
      Q => output(7),
      R => '0'
    );
\output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(6),
      Q => output(8),
      R => '0'
    );
\output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      D => D(7),
      Q => output(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_busy,
      CE => '1',
      CLR => \^tx_busy_obuf\,
      D => '1',
      Q => start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_busy : out STD_LOGIC;
    red_led : out STD_LOGIC;
    blue_led : out STD_LOGIC;
    green_led : out STD_LOGIC;
    RsRx : in STD_LOGIC;
    RsTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top_level : entity is "32056bfe";
end top_level;

architecture STRUCTURE of top_level is
  signal RsRx_IBUF : STD_LOGIC;
  signal RsTx_OBUF : STD_LOGIC;
  signal baud_clk : STD_LOGIC;
  signal blue_led_OBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal detector_n_0 : STD_LOGIC;
  signal detector_n_1 : STD_LOGIC;
  signal detector_n_2 : STD_LOGIC;
  signal detector_n_3 : STD_LOGIC;
  signal detector_n_4 : STD_LOGIC;
  signal detector_n_5 : STD_LOGIC;
  signal detector_n_6 : STD_LOGIC;
  signal green_led_OBUF : STD_LOGIC;
  signal receiver_n_15 : STD_LOGIC;
  signal receiver_n_16 : STD_LOGIC;
  signal receiver_n_17 : STD_LOGIC;
  signal receiver_n_5 : STD_LOGIC;
  signal receiver_n_6 : STD_LOGIC;
  signal red_led_OBUF : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal rx_busy : STD_LOGIC;
  signal state_next : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_busy_OBUF : STD_LOGIC;
begin
RsRx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RsRx,
      O => RsRx_IBUF
    );
RsTx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => RsTx_OBUF,
      O => RsTx
    );
blue_led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => blue_led_OBUF,
      O => blue_led
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
detector: entity work.color_detector
     port map (
      AR(0) => reset_IBUF,
      D(3 downto 2) => state_next(3 downto 2),
      D(1 downto 0) => \state_next__0\(1 downto 0),
      \FSM_sequential_state_reg_reg[0]_0\ => receiver_n_15,
      \FSM_sequential_state_reg_reg[1]_0\ => receiver_n_6,
      \FSM_sequential_state_reg_reg[2]_0\ => detector_n_4,
      \FSM_sequential_state_reg_reg[2]_1\ => detector_n_5,
      \FSM_sequential_state_reg_reg[2]_2\ => receiver_n_5,
      \FSM_sequential_state_reg_reg[3]_0\ => detector_n_6,
      \FSM_sequential_state_reg_reg[3]_1\ => receiver_n_17,
      \FSM_sequential_state_reg_reg[3]_2\ => receiver_n_16,
      Q(2) => data(4),
      Q(1) => data(2),
      Q(0) => data(0),
      blue_led_OBUF => blue_led_OBUF,
      green_led_OBUF => green_led_OBUF,
      \out\(3) => detector_n_0,
      \out\(2) => detector_n_1,
      \out\(1) => detector_n_2,
      \out\(0) => detector_n_3,
      red_led_OBUF => red_led_OBUF,
      rx_busy => rx_busy
    );
green_led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => green_led_OBUF,
      O => green_led
    );
pulse_gen: entity work.clock_divider
     port map (
      CLK => baud_clk,
      clk_IBUF_BUFG => clk_IBUF_BUFG
    );
receiver: entity work.uart_rx
     port map (
      CLK => baud_clk,
      D(3 downto 2) => state_next(3 downto 2),
      D(1 downto 0) => \state_next__0\(1 downto 0),
      \FSM_sequential_state_reg_reg[0]\ => detector_n_6,
      \FSM_sequential_state_reg_reg[1]\ => receiver_n_15,
      \FSM_sequential_state_reg_reg[1]_0\ => detector_n_5,
      \FSM_sequential_state_reg_reg[3]\ => receiver_n_5,
      \FSM_sequential_state_reg_reg[3]_0\ => receiver_n_6,
      \FSM_sequential_state_reg_reg[3]_1\ => detector_n_4,
      Q(7 downto 0) => data(7 downto 0),
      RsRx(0) => RsRx_IBUF,
      \led_status_reg[1]\ => receiver_n_16,
      \led_status_reg[1]_0\ => receiver_n_17,
      \out\(3) => detector_n_0,
      \out\(2) => detector_n_1,
      \out\(1) => detector_n_2,
      \out\(0) => detector_n_3,
      rx_busy => rx_busy
    );
red_led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => red_led_OBUF,
      O => red_led
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
transmitter: entity work.uart_tx
     port map (
      CLK => baud_clk,
      D(7 downto 0) => data(7 downto 0),
      RsTx_OBUF => RsTx_OBUF,
      rx_busy => rx_busy,
      tx_busy_OBUF => tx_busy_OBUF
    );
tx_busy_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_busy_OBUF,
      O => tx_busy
    );
end STRUCTURE;
