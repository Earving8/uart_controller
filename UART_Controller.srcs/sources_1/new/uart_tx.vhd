----------------------------------------------------------------------------------
-- Company: KU 443
-- Engineer: Nathan MF'in Nichols
-- 
-- Create Date: 04/27/2019 03:38:33 PM
-- Design Name: UART_TX

-- Module Name: top - Behavioral
-- Project Name: 443 Final Proj   
-- Target Devices: NEXYS 4
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: Numeric_std, Math_real, STD_LOGIC_1164
-- 
-- Revision: v0.1
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_tx is
            
    port(
            tx: out std_logic;               
            tx_busy: out std_logic;                      
            tx_data: in std_logic_vector(7 downto 0);
            tx_en: in std_logic;                     
            baudClk: in std_logic                 
        );
end uart_tx;

architecture Behavior of uart_tx is

    signal start: std_logic;                      
    signal isBusy: std_logic;                       
    signal output: std_logic_vector(10 downto 0);                     
    signal index: integer range 0 to 10; 
    
begin    

    --Load data with start and stop bits
    loading: process(tx_en)
    begin
        if (rising_edge(tx_en)) then     
            output(0) <= '1'; 
            output(1) <= '0'; 
            output(9 downto 2) <= tx_data; 
            output(10) <= '1';
        end if;
    end process;
    
    --strats transmission
    starting: process(tx_en)
    begin
        --if busy dont start
        if (isBusy = '1') then           
            start <= '0';
        --if not busy and rising edge, start
        elsif (rising_edge(tx_en)) then
            start <= '1';                
        end if;
    end process;

    --incriments through the bits to transmit
    counter: process(baudClk,start)
    begin
        --starting off set busy to high and index to 0
        if (start = '1') then            
            index <= 0;              
            isBusy <= '1';
        --once ten, stop transmitting
        elsif (index = 10) then
            isBusy <= '0';
        --with each clk cycle, incriment the clock
        elsif (rising_edge(baudClk)) then
            index <= index + 1;
        end if;
    end process;
    
    tx_busy <= isBusy;           
    tx  <= output(index);
end Behavior;
