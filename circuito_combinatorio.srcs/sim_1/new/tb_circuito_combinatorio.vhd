----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 08:18:26 PM
-- Design Name: 
-- Module Name: tb_circuito_combinatorio - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_circuito_combinatorio is
--  Port ( );
end tb_circuito_combinatorio;

architecture Behavioral of tb_circuito_combinatorio is

component circuito_combinatorio is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           E : out STD_LOGIC);
end component;

-- INPUTS
signal A1_s: STD_LOGIC;
signal A2_s: STD_LOGIC;
signal B1_s: STD_LOGIC;
signal B2_s: STD_LOGIC;
signal D1_s: STD_LOGIC;

--OUTPUTS
signal E_s: STD_LOGIC;

begin

DUT: circuito_combinatorio port map(
    A1 => A1_s,
    A2 => A2_s,
    B1 => B1_s,
    B2 => B2_s,
    D1 => D1_s,
    E => E_s);

process
begin

A1_s <= '0';
A2_s <= '0';
B1_s <= '0';
B2_s <= '0';
D1_s <= '0';

wait for 10ns;

A1_s <= '1';
A2_s <= '1';

wait for 20ns;

B1_s <= '1';
B2_s <= '1';

wait;

end process;


end Behavioral;
