Library IEEE;
use ieee.std_logic_1164.all;
Entity Acc_Result is
generic (n:integer :=8);
port ( clk,EN,rst:in std_logic;
      Acc_inp:in std_logic_vector(n-1 downto 0);
      Acc_out:out std_logic_vector(n-1 downto 0));
end Acc_Result;

architecture archAcc of Acc_Result is

component nDff is

port ( clk,EN,rst:in std_logic;
      d:in std_logic_vector(7 downto 0);
      q:out std_logic_vector(7 downto 0));
end component;

begin

Acc_R:nDff port map (clk,EN,rst,Acc_inp,Acc_out);
end archAcc;