LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LightController IS
	PORT(
		xmas : IN STD_LOGIC;
		cool : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		
		r_en : OUT STD_LOGIC;
		g_en : OUT STD_LOGIC;
		b_en : OUT STD_LOGIC
	);
END LightController;


ARCHITECTURE LightControllerFSM OF LightController IS
	type STATE_TYPE is (RED, GREEN, BLUE);
	signal state : STATE_TYPE;
begin
	process(clock, resetn) is
	begin
		if resetn = '0' then
			state <= RED;
		elsif rising_edge(clock) then
			case state is
				when RED =>
					state <= GREEN;
				when GREEN =>
					if cool = '1' then
						state <= BLUE;
					elsif xmas = '1' then
						state <= RED;
					else
						state <= BLUE;
					end if;
				when BLUE =>
					if cool = '0' then
						state <= RED;
					end if;
			end case;
		end if;
	end process;
	
	process(state) is
	begin
		case state is
			when RED =>
				r_en <= '1';
				g_en <= '0';
				b_en <= '0';
			when GREEN =>
				r_en <= '0';
				g_en <= '1';
				b_en <= '0';
			when BLUE =>
				r_en <= '0';
				g_en <= '0';
				b_en <= '1';
		end case;
	end process;
end LightControllerFSM;
