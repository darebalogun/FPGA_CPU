LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity bit_adder_32 is
	PORT ( cin: in std_logic;
			a, b: in std_logic_vector(31 downto 0);
			s: out std_logic_vector(31 downto 0);
			cout: out std_logic
			);
end bit_adder_32;

architecture ripple_add of bit_adder_32 is
	component fulladder
		PORT (x, y, z: in std_logic; sum, carry: out std_logic);
	end component;
	
	signal t: std_logic_vector(32 downto 0);
begin
	t(0) <= cin; 
	cout <= t(32);
	
	FA: for i in 0 to 31 generate
		FA_i: fulladder PORT MAP(t(i), a(i), b(i), s(i), t(i+1));
	end generate;
end ripple_add;
