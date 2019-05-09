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
           reset: in std_logic; -- resets colors
           tx_busy: out std_logic;
           red_led, blue_led, green_led: out std_logic;
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
    
    component uart_rx is
        port (
            baudClk     : in    STD_LOGIC;
            rx          : in    STD_LOGIC;
            rx_out      : out   STD_LOGIC_VECTOR(7 downto 0);
            busy        : out   std_logic
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
    
    component color_detector is
        Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
               reset: in STD_LOGIC;
               clk: in STD_LOGIC;
               red_led : out STD_LOGIC;
               blue_led : out STD_LOGIC;
               green_led : out STD_LOGIC);
    end component;

    signal baud_clk, rx_busy: std_logic;
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
        tx_en => rx_busy,
        baudClk => baud_clk
    );
    
    receiver: uart_rx port map(
        baudClk => baud_clk,
        rx_out => data,
        rx => RsRx,
        busy => rx_busy
    );
    
    detector: color_detector port map ( 
            data => data,
           reset => reset,
           clk => rx_busy,
           red_led => red_led,
           blue_led => blue_led,
           green_led=> green_led
     );
     

end Behavioral;
