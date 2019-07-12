----------------------------------------------------------------------------------
-- University of Mississippi - El E 386
-- Lab 1 Ex. Credit Assignment
-- Engineer: Ben Mighall
--
-- This project implements a full adder circuit using 3 switches and 2 LEDs on an FPGA board.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
    Port ( SW : in STD_LOGIC_VECTOR (15 downto 0);
           LED : out STD_LOGIC_VECTOR (15 downto 0));
end fulladder;

architecture Behavioral of fulladder is

begin

--Note: LED(0) is the output S, LED(1) is output C_out; SW(0) is bit A, SW(1) is bit B, SW(2) is C_in

LED(0) <= (SW(0) XOR SW(1)) XOR SW(2); --output S
LED(1) <= ((SW(0) XOR SW(1)) AND SW(2)) OR (SW(0) AND SW(1)); --output C_out

end Behavioral;
