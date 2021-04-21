----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2021 07:53:17 PM
-- Design Name: 
-- Module Name: circuito_combinatorio - Behavioral
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

entity circuito_combinatorio is
    Port ( A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           E : out STD_LOGIC);
end circuito_combinatorio;

architecture Behavioral of circuito_combinatorio is

signal A_out: STD_LOGIC;
signal B_out: STD_LOGIC;
signal C_out: STD_LOGIC;

begin

A_out <= A1 and A2;
B_out <= B1 and B2;
C_out <= B2 and (not D1);
E <= A_out or B_out or C_out;

end Behavioral;
