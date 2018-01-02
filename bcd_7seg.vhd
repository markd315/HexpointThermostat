library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity bcd_7seg is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (6 downto 0));
end bcd_7seg;

architecture Behavioral of bcd_7seg is
begin process (bcd)
begin
output <= "0000000";
case bcd is
	when "0000" =>
		output <= "1111110";
	when "0001" =>
		output <= "0110000";
	when "0010" =>
		output <= "1101101";
	when "0011" =>
		output <= "1111001";
	when "0100" =>
		output <= "0110011";
	when "0101" =>
		output <= "1011011";
	when "0110" =>
		output <= "1011111";
	when "0111" =>
		output <= "1110000";
	when "1000" =>
		output <= "1111111";
	when "1001" =>
		output <= "1111011";
	when "1010" =>
		output <= "1111101";
	when "1011" =>
		output <= "0011111";
	when "1100" =>
		output <= "1001110";
	when "1101" =>
		output <= "0111101";
	when "1110" =>
		output <= "1001111";
	when "1111" =>
		output <= "1000111";
	when others =>
		null;

end case;
end process;

end Behavioral;