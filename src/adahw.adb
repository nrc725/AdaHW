-------------------------------------------------------------------------
--
--  Program: Ada Homework
--  Purpose: Take in test result data and output conditional probability
--  Author: Greg Fletcher, Jason Fazio, Nick Currie
--
-------------------------------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;
procedure Adahw is
   --Declare array for patient data input, can replace if I can total
        --in real time.
   --Declare array to hold the test totals.
   --Declare array for output.
begin
   --For loop to get patient data input and insert into an array.
   Get();
   --For loop to read patient data array and sum the test totals.

   --Function to calculate and output probabilities.
   Put();
   null;
end Adahw;
