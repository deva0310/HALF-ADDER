----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2020 14:06:49
-- Design Name: 
-- Module Name: tb_half_adder_clock - Behavioral
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

entity tb_half_adder_clock is
--  Port ( );
end tb_half_adder_clock;

architecture Behavioral of tb_half_adder_clock is
signal a,b: std_logic := '0';
signal c,s: std_logic;
component HalfAdder is 
Port ( 
a,b : in std_logic; 
c,s : out std_logic
);
end component;
begin
HA1: HalfAdder port map(a,b,c,s);
process(a,b) 
begin 
a <= not a after 10 ns;
b <= not b after 20 ns;
end process;

end Behavioral;
