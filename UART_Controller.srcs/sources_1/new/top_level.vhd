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
           tx_busy: out std_logic;
           RsRx : in std_logic; -- Serial In
           RsTx : out std_logic ); -- Serial Out
end top_level;

architecture Behavioral of top_level is

    component clock_divider is
        generic(f_in : natural := 100E6; -- fin = 100MHz 
            f_out: natural := 9600
             -- fout = 9600 Hz            
            ); 
        Port ( clk : in STD_LOGIC;
               Y : out STD_LOGIC);
    end component;
    
    component shift_register is
    port(
        clk       :   in  STD_LOGIC;
        sh_out    :   out STD_LOGIC_VECTOR( 7 downto 0 );
        input     :   in  STD_LOGIC
    );
    end component;
    
component uart_tx is
                
        port(
                tx: out std_logic;               
                tx_busy: out std_logic;                      
                tx_data: in std_logic_vector(7 downto 0);
                tx_en: in std_logic;                     
                baudClk: in std_logic                 
            );
    end component;

    signal baud_clk: std_logic;
    signal data: std_logic_vector(7 downto 0);

begin

    pulse_gen: clock_divider port map(
        clk => clk,
        Y => baud_clk
    );
    
    transmitter: uart_tx port map(
        tx => RsTx,
        tx_busy => tx_busy,
        tx_data => data,
        tx_en => en,
        baudClk => baud_clk
    );
    
    receiver: shift_register port map(
        clk => baud_clk,
        sh_out => data,
        input => RsRx
    );


end Behavioral;
