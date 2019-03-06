----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 03:50:13 PM
-- Design Name: 
-- Module Name: adder_clb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_clb is
    Port ( clk : in std_logic;
           A : in STD_LOGIC_VECTOR (15 downto 0);
           B : in STD_LOGIC_VECTOR (15 downto 0);
           Y : out STD_LOGIC_VECTOR (15 downto 0));
end adder_clb;

architecture Behavioral of adder_clb is
signal C : std_logic_vector(15 downto 0);
signal A_1 : std_logic_vector(15 downto 0);
signal B_1 : std_logic_vector(15 downto 0);
begin

C <= std_logic_vector(unsigned(A_1) + unsigned(B_1));
    process(clk)
    begin
        if(rising_edge(clk)) then
            A_1 <= A;
            B_1 <= B;
            Y <= C;
        end if;
    end process;
end Behavioral;
