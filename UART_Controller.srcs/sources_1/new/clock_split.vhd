----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2019 12:40:17 PM
-- Design Name: 
-- Module Name: clock_split - Behavioral
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
use WORK.MATH_REAL.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_split is
generic( f_in   : natural := 100E6;  --fin = 100MHz
         f_out  : natural := 9600  --fout = 9.6 MHz
       );
port(
    clk     : in    STD_LOGIC;
    enable  : in    STD_LOGIC;
    q       : out STD_LOGIC
    );
end clock_split;

architecture Behavioral of clock_split is
constant count_max  : natural := integer( round( real( f_in ) / real( f_out )));
constant n          : natural := integer( ceil( log2( real( f_in ) / real( f_out ))));

signal count : STD_LOGIC_VECTOR(n - 1 downto 0);
signal q_in  : STD_LOGIC;

begin
q <= q_in;

process (clk) begin
    if enable = '1' then
        if rising_edge(clk) then
            if ( to_integer( unsigned( count )) = count_max / 2 ) then
                q_in <= not q_in;
                count <= (others=> '0');
            else
                count <= std_logic_vector( unsigned( count ) + 1 );
            end if;
        end if;
    end if;
end process;

end Behavioral;
