----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 12:10:38 PM
-- Design Name: 
-- Module Name: shift_register - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_rx is
--    generic ( clks_per_bit : integer := (100E6 / 9600) );
    port (
        baudClk     : in    STD_LOGIC;
        rx          : in    STD_LOGIC;
        rx_out      : out   STD_LOGIC_VECTOR(7 downto 0);
        busy        : out   std_logic
        );
end uart_rx;

architecture Behavioral of uart_rx is

type t_SM_Main is (state_Idle, state_Data0, state_Data1 , state_Data2 , state_Data3 , state_Data4 , state_Data5, state_Data6, state_Data7, state_Stop_Bit);
signal SM_Main : t_SM_Main := state_Idle;
signal nxt_state : t_SM_Main := state_Idle;

--signal baudClk_count:   integer range 0 to clks_per_bit - 1 := 0;
signal rx_vect:         STD_LOGIC_VECTOR(7 downto 0);
signal rx_buff:         STD_LOGIC_VECTOR(7 downto 0);
signal busy_buff:       std_logic;

begin
    process(baudClk)
    begin
        if rising_edge(baudClk) then
            SM_Main <= nxt_state;
        end if;
    end process;

    --next state
    process(SM_Main)
    begin
        case SM_Main is
            when state_Idle =>
                if rx = '0' then
                    nxt_state <= state_Data0;
                else
                    nxt_state <= state_Idle;
                end if;
            when state_Data0 =>
                nxt_state <= state_Data1;
            when state_Data1 =>
                nxt_state <= state_Data2;
            when state_Data2 =>
                nxt_state <= state_Data3;
            when state_Data3 =>
                nxt_state <= state_Data4;
            when state_Data4 =>
                nxt_state <= state_Data5;
            when state_Data5 =>
                nxt_state <= state_Data6;
            when state_Data6 =>
                nxt_state <= state_Data7;
            when state_Data7 =>
                nxt_state <= state_Stop_Bit;
            when state_Stop_Bit =>
                nxt_state <= state_Idle;
        end case;
    end process;
    
    --output logic
    process(SM_Main)
    begin
        case SM_Main is
        when state_Data0 =>
            busy_buff <= '1';
            rx_vect(0) <= rx;
            rx_buff <= rx_buff;
        when state_Data1 =>
            rx_vect(1) <= rx;
            rx_buff <= rx_buff;
        when state_Data2 =>
            rx_vect(2) <= rx;
            rx_buff <= rx_buff;
        when state_Data3 =>
            rx_vect(3) <= rx;
            rx_buff <= rx_buff;
        when state_Data4 =>
            rx_vect(4) <= rx;
            rx_buff <= rx_buff;
        when state_Data5 =>
            rx_vect(5) <= rx;
            rx_buff <= rx_buff;
        when state_Data6 =>
            rx_vect(6) <= rx;
            rx_buff <= rx_buff;
        when state_Data7 =>
            rx_vect(7) <= rx;
            rx_buff <= rx_buff;
        when state_Stop_Bit =>
            rx_buff <= rx_vect;
        when others =>
            rx_buff <= rx_buff;
            busy_buff <= '0';
        end case;
    end process;
    
busy <= busy_buff;
rx_out <= rx_buff;
end Behavioral;