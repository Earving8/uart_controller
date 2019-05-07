----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2019 03:38:02 PM
-- Design Name: 
-- Module Name: flip_flop - Behavioral
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

library UNISIM;
use UNISIM.VComponents.all;

Entity flip_flop Is
port (
		d 	        : in STD_LOGIC;
		clk         : in STD_LOGIC;
		reset       : in STD_LOGIC;
		q           : out STD_LOGIC
	);
end flip_flop;

Architecture behavior of flip_flop Is


begin
process (clk) begin
	if rising_edge(clk) then
        if (reset = '1') then
			q <= '0';
		else
			q <= d;
		end if;
	end if;
end process;

end behavior;