----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2020 13:30:57
-- Design Name: 
-- Module Name: tb_halfadder - Behavioral
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

entity tb_halfadder is
--  Port ( );
end tb_halfadder;

architecture Behavioral of tb_halfadder is
signal x,y : std_logic := '0';
signal p,q : std_logic;
component HalfAdder is
Port ( 
a,b : in std_logic; 
c,s : out std_logic
);
end component;
begin
HA1: HalfAdder port map(x,y,p,q);
x <= '0' after 10 ns,'0' after 15 ns,'1' after 20 ns, '1' after 30 ns;
y <= '0' after 10 ns,'1' after 15 ns,'0' after 20 ns,'1' after 30ns;
end Behavioral;
