----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2019 03:15:41 PM
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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
use work.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
    generic(f_in : natural := 100E6; -- fin = 100MHz 
        f_out: natural := 9600 -- fout = 9600 Hz            
        ); 
    Port ( clk : in STD_LOGIC;
           Y : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
    constant n : natural := integer( ceil( log2( real(f_in)/real(f_out) ))); 
    constant count_max : natural := integer( round(real(f_in)/real(f_out) ));
    constant half_count_max : natural := integer(ceil( real(count_max)/real(2) ));
    signal clk_out: std_logic;
    signal count: unsigned(n-1 downto 0);

begin

process (clk) 
begin  
    if rising_edge(clk) then
        if count = (half_count_max) then
            clk_out <= not clk_out;
            count <= count +1;
        elsif count = (count_max) then
            clk_out <= not clk_out;
            count <= (others => '0');
        else 
            count <= count +1;
        end if;
    end if;
end process; 

Y <= clk_out;

end Behavioral;
