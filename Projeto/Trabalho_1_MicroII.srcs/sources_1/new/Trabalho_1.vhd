----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2020 08:41:59
-- Design Name: 
-- Module Name: Trabalho_1 - Behavioral
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

entity Trabalho_1 is
    port(
        clk : in std_logic;
        led1 : out std_logic;
        led2 : out std_logic;
        
        rgb1_b: out std_logic;
        rgb1_r: out std_logic;
        rgb1_g: out std_logic;
        
        rgb2_b: out std_logic;
        rgb2_r: out std_logic;
        rgb2_g: out std_logic;
        
        sw1: in std_logic;
        sw2: in std_logic;
        sw3: in std_logic;
        btn1: in std_logic;
        btn2: in std_logic
    );
end Trabalho_1;

architecture Behavioral of Trabalho_1 is
    constant divider_c : integer :=100000000;
    
    signal led_s1 : std_logic := '0';
    signal led_s2 : std_logic := '0';
    
    signal rgb1_b_s : std_logic := '0';
    signal rgb1_g_s : std_logic := '0';
    signal rgb1_r_s : std_logic := '0';
    signal rgb2_b_s : std_logic := '0';
    signal rgb2_g_s : std_logic := '0';
    signal rgb2_r_s : std_logic := '0';
    
    signal cnt_s : integer range 0 to divider_c :=0;
    signal cont : integer range 0 to 4 :=0;
    signal contbutton: integer range 0 to 1023 :=0;
    signal but1 : std_logic := '1';
begin
    led1 <= led_s1;
    led2 <= led_s2;
    rgb1_b_s <= sw1;
    rgb1_r_s <= sw2;
    rgb1_g_s <= sw3;
    
    rgb2_b_s <= sw1;
    rgb2_r_s <= sw2;
    rgb2_g_s <= sw3;
    
             --rgb1_b <=rgb1_b_s;
             --rgb1_r <=rgb1_r_s;
             --rgb1_g <=rgb1_g_s;
             --rgb2_b <=rgb2_b_s;
             --rgb2_r <=rgb2_r_s;
            -- rgb2_g <=rgb2_g_s;
    
    process(clk,btn1,btn2)
    begin
       if rising_edge(btn2) then
           rgb1_b <=rgb1_b_s;
           rgb1_r <=rgb1_r_s;
           rgb1_g <=rgb1_g_s;
           rgb2_b <=rgb2_b_s;
           rgb2_r <=rgb2_r_s;
           rgb2_g <=rgb2_g_s; 
        end if;
        
        
          
          if rising_edge(clk) then
            cnt_s <= cnt_s +1;
            if (btn1= '1') then
                contbutton <= contbutton +1;
                if(contbutton >= 15) then
                contbutton<=0;
                but1 <= not but1;
                end if;
            end if;
            if (cnt_s = divider_c)then
                cont <= cont+1;
                if(but1 ='1') then
                    if(cont = 0)then
                        led_s1<='1';
                        led_s2<='0';
                    elsif(cont = 1)then
                        led_s1<='0';
                        led_s2<='1';
                    elsif(cont = 2)then
                        led_s1<='0';
                        led_s2<='0'; 
                        cont <=0;
                    end if;
               else
                        led_s1<='1';
                        led_s2<='1'; 
               end if;
               cnt_s<=0;
            end if;
            
                      
      
      end if;
          
       
    end process;

end Behavioral;
