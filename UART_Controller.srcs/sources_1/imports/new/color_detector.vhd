----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2019 10:24:24 PM
-- Design Name: 
-- Module Name: color_detector - Behavioral
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

entity color_detector is
    Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
           reset: in STD_LOGIC;
           clk: in STD_LOGIC;
           red_led : out STD_LOGIC;
           blue_led : out STD_LOGIC;
           green_led : out STD_LOGIC);
end color_detector;

architecture Behavioral of color_detector is
    -- constants for acsii characters
    constant  r_acsii: std_logic_vector := "01110010";
    constant e_acsii: std_logic_vector := "01100101";
    constant d_acsii: std_logic_vector := "01100100";
    constant g_acsii: std_logic_vector := "01100111";
    constant n_acsii: std_logic_vector := "01101110";
    constant b_acsii: std_logic_vector := "01100010";
    constant l_acsii: std_logic_vector := "01101100";
    constant u_acsii: std_logic_vector := "01110101";
    constant space_acsii: std_logic_vector := "00100000";
    
    type state_type is (idle, space, r,re,red,g,gr,gre,gree,green,b,bl,blu,blue);
    signal state_reg, state_next: state_type;
    signal led_status, led_status_buffer: std_logic_vector (1 downto 0);

begin
    --state regester
    process(clk, reset)
    begin 
        if reset = '1' then 
            state_reg <= idle;
            led_status <= "00";
        elsif falling_edge(clk) then
            state_reg <= state_next;
            led_status <= led_status_buffer;
        end if;
    end process;
    
    -- next-state logic
    process(state_reg)
    begin
        case state_reg is
            when idle => 
                if data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when space =>
                if data = r_acsii then
                    state_next <= r;
                elsif data = g_acsii then
                    state_next <= g;
                elsif data = b_acsii then
                    state_next <= b;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when r =>
                if data = e_acsii then
                    state_next <= re;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when re =>
                if data = d_acsii then
                    state_next <= red;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when red =>
                if data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when g =>
                if data = r_acsii then
                    state_next <= gr;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when gr =>
                if data = e_acsii then
                    state_next <= gre;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;                
            when gre =>
                if data = e_acsii then
                    state_next <= gree;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if; 
            when gree =>
                if data = n_acsii then
                    state_next <= green;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when green =>
                if data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;                                    
            when b =>
                if data = l_acsii then
                    state_next <= bl;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;                    
            when bl =>
                if data = u_acsii then
                    state_next <= blu;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;                           
            when blu =>
                if data = e_acsii then
                    state_next <= blue;
                elsif data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;   
            when blue =>
                if data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
            when others =>
                if data = space_acsii then
                    state_next <= space;
                else
                    state_next <= idle;
                end if;
        end case;                        
    end process;
    
    --output logic
    process (state_next)
    begin
        case state_next is
            when red =>
                led_status_buffer <= "01";
            when green =>
                led_status_buffer <= "10";                                      
            when blue =>
                led_status_buffer <= "11";
            when others =>
                led_status_buffer <= led_status;
        end case;   
    end process;
    
    
    red_led <= (not led_status(1)) and led_status(0);
    blue_led <= led_status(1) and led_status(0);
    green_led <= led_status(1) and (not led_status(0));


end Behavioral;
