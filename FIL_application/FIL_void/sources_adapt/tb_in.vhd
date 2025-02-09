library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use IEEE.Std_Logic_unsigned.all;

entity tb_in is 
end entity tb_in;

architecture testbench of tb_in is

component in_adapt is 
generic(	
		NUM_CHANNEL 			 : integer 	:= 40;
		CHANNEL_WIDTH			 : integer 	:= 6  
	);
	port (
		clk_a   				 	 : IN  std_logic;
		clk_b   				 	 : IN  std_logic;
		enb   				 	 : IN  std_logic;
		reset 				 	 : IN  std_logic;
		
		-- from the simunlink wrapper
		din     					: IN  std_logic_vector(31 DOWNTO 0);
		
		
		-- link to the "to be tested"
	
		--from AST interface  
		ast_source_ready				: in std_logic; 
		
		--to AST interface
		ast_source_valid					: out std_logic;													 												
		ast_source_sop						: out std_logic;													 
		ast_source_eop						: out std_logic;	
		ast_source_data					: out std_logic_vector(31 downto 0);
		ast_source_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end component in_adapt;

constant CLK_PERIOD_125MHZ 		: time := 8 ns;
constant CLK_PERIOD_20MHZ 		: time := 50 ns;
constant CHANNEL_WIDTH			   : integer 	:= 6;

signal s_clk_a   				 	: std_logic;
signal s_clk_b					 	: std_logic;
signal s_enb   				 	: std_logic;
signal s_reset 				 	: std_logic;

signal s_din    					: std_logic_vector(31 DOWNTO 0) := (others => '0');

signal s_ast_source_ready		: std_logic;

signal s_ast_source_valid			: std_logic;													 												
signal s_ast_source_sop				: std_logic;													 
signal s_ast_source_eop				: std_logic;												
signal s_ast_source_data			: std_logic_vector(31 downto 0);
signal s_ast_source_channel		: std_logic_vector(CHANNEL_WIDTH-1 downto 0)	;


begin

	signal_clk_b: process
	Begin
		s_clk_b  					<= '1' ; 
		wait for CLK_PERIOD_125MHZ/2 ;
		s_clk_b 					<= '0'  ;
		wait for CLK_PERIOD_125MHZ/2 ;
	End Process;
	
		signal_clk_a: process
	Begin
		s_clk_a  					<= '1' ; 
		wait for CLK_PERIOD_20MHZ/2 ;
		s_clk_a 					<= '0'  ;
		wait for CLK_PERIOD_20MHZ/2 ;
	End Process;
	
	rst_enb: process
	begin 	
		s_reset 					<= '1';
		s_enb 					<= '1';
		s_ast_source_ready 	<= '1';		
		wait;
	end process;
	
	data : process
	begin
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
	end process;
	
	
	
	uut : in_adapt
	generic map(	
		NUM_CHANNEL 			 => 40,
		CHANNEL_WIDTH			 => 6  
	)
		port map (
		clk_a   				 	 => s_clk_a,
		clk_b  				 	 => s_clk_b,
		enb   				 	 => s_enb,
		reset 				 	 => s_reset,
		
		-- from the simunlink wrapper
		din     					 => s_din,
		
		
		-- link to the "to be tested"
	
		--from AST interface  
		ast_source_ready		=> s_ast_source_ready,

		--to AST interface
		ast_source_valid			=> s_ast_source_valid,
		ast_source_sop				=> s_ast_source_sop,
		ast_source_eop				=> s_ast_source_eop,
		ast_source_data			=> s_ast_source_data,
		ast_source_channel		=> s_ast_source_channel
		);

end testbench;
		