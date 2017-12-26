library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd_7seg is
Port ( BCD : in STD_LOGIC_VECTOR (3 DOWNTO 0);
A,B,C,D,E,F,G : out STD_LOGIC);
end bcd_7seg;
 
architecture Behavioral of bcd_7seg is
 
begin

A <= BCD(0) OR BCD(2) OR (BCD(1) AND BCD(3)) OR (NOT BCD(1) AND NOT BCD(3));
B <= (NOT BCD(1)) OR (NOT BCD(2) AND NOT BCD(3)) OR (BCD(2) AND BCD(3));
C <= BCD(1) OR NOT BCD(2) OR BCD(3);
D <= (NOT BCD(1) AND NOT BCD(3)) OR (BCD(2) AND NOT BCD(3)) OR (BCD(1) AND NOT BCD(2) AND BCD(3)) OR (NOT BCD(1) AND BCD(2)) OR BCD(0);
E <= (NOT BCD(1) AND NOT BCD(3)) OR (BCD(2) AND NOT BCD(3));
F <= BCD(0) OR (NOT BCD(2) AND NOT BCD(3)) OR (BCD(1) AND NOT BCD(2)) OR (BCD(1) AND NOT BCD(3));
G <= BCD(0) OR (BCD(1) AND NOT BCD(2)) OR ( NOT BCD(1) AND BCD(2)) OR (BCD(2) AND NOT BCD(3));
 
end Behavioral;