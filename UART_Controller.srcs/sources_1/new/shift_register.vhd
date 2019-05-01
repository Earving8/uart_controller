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
use WORK.MATH_REAL.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_register is
port(
    clk       :   in  STD_LOGIC;
    sh_out    :   out STD_LOGIC_VECTOR( 7 downto 0 );
    input     :   in  STD_LOGIC;
    baud_rate :  in  STD_LOGIC
);
end shift_register;

architecture Behavioral of shift_register is

component flip_flop is
port (
		d 	        : in  STD_LOGIC;
		clk         : in  STD_LOGIC;
		reset       : in  STD_LOGIC;
		q           : out STD_LOGIC
	);
end component;

signal feed : STD_LOGIC_VECTOR( 7 downto 0);

begin

--feed(0) <= input;

D0: for i in 0 to 6 generate
    feed(i) <= input when baud_rate = '0' and i = 0 else
               feed( i + 1 ) when baud_rate = '0' else
               feed(i);
    Di: flip_flop port map(
        d => feed(i),
        clk => clk,
        reset => '0',
        q => feed( i + 1 )
        );
end generate;
    
sh_out <= feed;
end Behavioral;
