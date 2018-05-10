Library IEEE;
use ieee.std_logic_1164.all;
Entity nDff is
generic (n:integer :=8);
port ( clk,EN,rst:in std_logic;
      d:in std_logic_vector(n-1 downto 0);
      q:out std_logic_vector(n-1 downto 0));
end nDff;

architecture archDff of nDff is
begin
process (clk,EN,rst)
begin 
if rst='1' then
q<=(others =>'0');
elsif rising_edge(clk) and EN='1' then
 q<=d;
end if;
end process;
end archDff;
    