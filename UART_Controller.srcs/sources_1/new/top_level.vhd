----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2019 04:10:37 PM
-- Design Name: 
-- Module Name: top_level - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_level is
    Port ( clk : in STD_LOGIC;
           RsRx : in STD_LOGIC; -- UART_TXD_IN
           RsRts : in STD_LOGIC; -- UART_RTS
           RsTx : out STD_LOGIC; -- UART_RXD_OUT
           RsCts : out STD_LOGIC); -- UART_CTS
end top_level;

architecture Behavioral of top_level is

begin

RsTx <= RsRx;
RsCTS <= RSRts;


end Behavioral;
