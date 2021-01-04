----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 18:51:48
-- Design Name: 
-- Module Name: multibit_clck_tb - Behavioral
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
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multibit_clck_tb is
--  Port ( );
end multibit_clck_tb;

architecture Behavioral of multibit_clck_tb is
component HalfAdder is
Port ( 
a,b : in std_logic_vector(3 downto 0);
c   : out std_logic_vector(4 downto 0)
);  
end component;
signal a1,b1: std_logic_vector(3 downto 0) :="0000";
signal s1  : std_logic_vector(4 downto 0);
begin
T1: HalfAdder port map(a => a1,b => b1,c =>s1);
process(a1,b1)begin
a1 <= a1+1 after 5 ns;
b1 <= b1+1 after 10 ns;
end process;
end Behavioral;
