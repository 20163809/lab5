library ieee;
use ieee.std_logic_1164.all;
 
entity lab5case is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
	C    : in  std_logic;		D    : in  std_logic;
    F : out std_logic
    );
end lab5case;
 
architecture rtl of lab5case is
begin
process (A, B, C)
begin
   Case(not (A xor B)) or (not(C and D)) is
      when '1' => F <= '1';
	  when '0' => F <= '0';
   end case;
end process;   
end rtl;