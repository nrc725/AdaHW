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
   --Declare an integer for the number of records. First input.
   n, id, sick, test1, test2 : Integer;
   --Declare array to hold the test totals.
   type Totals: array (1..4) of Integer;
   --Declare array for output.
   probs: array (1..4) of Float;
begin
   --For loop to get patient data input and insert into an array.
   Get(n);
   for N in n loop
      Get(id);
      Get(sick);
      Get(test1);
      Get(test2);
      if sick = 1 then
         --Increase Positive test totals
         if test1 = 1 then
            --Increase Positive Test 1

         end if;
         if test2 = 1 then
            --Increase Positive Test 2

         end if;
      else
         --Increase Negative test totals
         if test1 = 0 then
            --Increase Neagtive Test 1

         end if;
         if test2 = 0 then
            --Increase Neagtive Test 2

         end if;
      end if;
   end loop;
   --Function to calculate and output probabilities.


   --Outputs
   Put();
   return;
end Adahw;
