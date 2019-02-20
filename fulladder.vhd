LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladder IS
		port( cin, a, b : in std_logic;
				s, cout : out std_logic);
end fulladder;

architecture Behavioural of fulladder is
begin
	s <= a XOR b XOR cin;
	cout <= (a AND b) OR (a and cin) OR (b AND cin);
end behavioural;
