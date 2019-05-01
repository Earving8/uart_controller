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
    Port ( clk : in std_logic;
           en : in std_logic; -- turns UART on/off
           RsRx : in std_logic; -- Serial In
           RsTx : out std_logic ); -- Serial Out
end top_level;

architecture Behavioral of top_level is

component shift_register is
generic( f_in   : natural := 100E6;
         f_out  : natural := 9600
       );
port   (
       clk     :   in STD_LOGIC;
       sh_out  :   out STD_LOGIC_VECTOR( 7 downto 0 );
       input   :   in STD_LOGIC
       );
end component;

signal toTypeWriter : STD_LOGIC_VECTOR( 7 downto 0);

begin

S0: shift_register port map(
    clk => clk,
    sh_out => toTypeWriter,
    input => RsRx
    );



RsTx <= RsRx when en = '1' else
        '0';


end Behavioral;
