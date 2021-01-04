----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2020 20:46:03
-- Design Name: 
-- Module Name: responsive_tb_array_record - Behavioral
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

entity responsive_tb_array_record is
--  Port ( );
end responsive_tb_array_record;

architecture Behavioral of responsive_tb_array_record is
component 
HalfAdder is
Port ( 
a,b : in std_logic; 
c,s : out std_logic
);  
end component;
signal a,b : std_logic := '0';
signal c,s   : std_logic;
type record_type is record 
a,b :  std_logic; 
c,s   :  std_logic;
end record;
type arr_type is array(3 downto 0) of record_type;
constant stimulus : arr_type :=(('0','0','0','0'),('0','1','1','0'),('1','0','1','0'),('1','1','0','1'));
begin
process
begin
a <= stimulus(1).a;
b <= stimulus(1).b;
wait for 5 ns;
assert (s=stimulus(1).s and c=stimulus(1).c) report "ERROR";
wait;
end process;
end Behavioral;
