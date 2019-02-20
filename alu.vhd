LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.bit_adder_32_package.all;

entity ALU is
	port(
		aBus: in std_logic_vector(31 downto 0);
		bBus: in std_logic_vector(31 downto 0);
		opCode: in std_logic_vector(3 downto 0);
		aluOut: out std_logic_vector(31 downto 0);
		C: out std_logic;
		V: out std_logic;
		N: out std_logic;
		Z: out std_logic
		);
	end ALU;

	architecture Behavioral of ALU is
	component bit_adder_32
	PORT ( cin: in std_logic;
			a, b: in std_logic_vector(31 downto 0);
			s: out std_logic_vector(31 downto 0);
			cout: out std_logic
			);
	end component;
	
	signal tmp: std_logic_vector(31 downto 0);
	
	begin
	
	a1_nbit_adder: bit_adder_32 port map( '0', aBus, bBus, tmp, C);
	
	process(opCode, aBus, bBus, tmp)
	begin
	case(opCode) is
		when "0000" => aluOut <= tmp;
		when others => aluOut <= tmp;
	end case;
	end process;
	end Behavioral;
	
		
	