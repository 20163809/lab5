library ieee;
use ieee.std_logic_1164.all;
 
entity lab5if is
  port (
    A     in  std_logic;
	B     in  std_logic;
	C     in  std_logic;
    F   out std_logic
);
end lab5if;
 
architecture rtl of lab5if is
begin
		process(A,B,C)
		begin 
		if 	  (A = '1' and not B = '1') or (not A='1' and not C='1') then F='0';
		elsif (A = '1' and not B = '1') or (not A='1' and not C='0') then F='0';
		elsif (A = '1' and not B = '0') or (not A='1' and not C='1') then F='1';
		elsif (A = '1' and not B = '0') or (not A='1' and not C='0') then F='1';
		elsif (A = '0' and not B = '1') or (not A='0' and not C='1') then F='0';
		elsif (A = '0' and not B = '1') or (not A='0' and not C='0') then F='1';
		elsif (A = '0' and not B = '0') or (not A='0' and not C='1') then F='0';
		elsif (A = '0' and not B = '0') or (not A='0' and not C='0') then F='1';
		else F = '0';
		
	end if;
	end process;
end rtl;