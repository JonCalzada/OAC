--3 multiplexores: entradas, ligas, salidas

--Multiplexor 5 a 1, multiplexorEntradas
library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexorEntradas is
    port (
        entrada : out std_logic; --de todas las entradas solo debe salir una
        AUX,W,X,Y,Z : in std_logic; --todas las entradas
        prueba : in std_logic_vector(2 downto 0) --viene de la memoria
    ); --prueba solo me dira cual de las cuatro entradas es la que se necesita ahora,
       --independientemente de si su valor es positivo o negativo, la necesitamos 
       --para saber cual es la liga/salida correspondiente (la falsa o la verdadera?)
end entity;

architecture arch of multiplexorEntradas is

    -- Señal auxiliar para hacer más legible la selección.
    signal auxSelVect : std_logic_vector (2 downto 0);

begin
    
    auxSelVect(1) <= prueba(1); 
    auxSelVect(0) <= prueba(0);
    --auxSelVect (prueba) = 000, 001, 010, 011 , 100

    -- La selección de entrada a poner en la salida..
    entrada <= W when auxSelVect = "000" else
        X when auxSelVect = "001" else
        Y when auxSelVect = "010" else
        Z when auxSelVect = "011" else
		  AUX when auxSelVect = "100";
end architecture;