-------------------------------------------------------------------------
--
--  Program: Ada Homework
--  Purpose: Take in test result data and output conditional probability
--  Author: Greg Fletcher, Jason Fazio, Nick Currie
--
-------------------------------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Adahw is
   --Declare an integer for the number of records.
   n, id, sick, test1, test2: Integer;
   pos1total, neg1total, pos1sick, neg1health,
   pos2total, neg2total, pos2sick, neg2health: Integer := 0;
   test1pp, test1np, test2pp, test2np: Float;
begin
   --For loop to get patient data input and insert into an array.
   Get(n);
   for N in 0..n loop
      Get(id);
      Get(sick);
      Get(test1);
      Get(test2);

      if test1 = 1 then
         --Increase Positive test totals
         pos1total := pos1total + 1;
         if sick = 1 then
            --Increase Positive Test 1
            pos1sick := pos1sick + 1;
         end if;
      else
         --Increase Negative test totals
         if sick = 0 then
            --Increase Neagtive Test 1
           neg1health := neg1health + 1;
         end if;
      end if;
      if test2 = 1 then
         --Increase Positive test totals
         pos2total := pos2total + 1;
         if sick = 1 then
            --Increase Positive Test 1
            pos2sick := pos2sick + 1;
         end if;
      else
         --Increase Negative test totals
         if sick = 0 then
            --Increase Neagtive Test 1
           neg2health := neg2health + 1;
         end if;
      end if;
   end loop;
   --Function to calculate and output probabilities.
   test1pp := Float(pos1sick/pos1total);
   test1np := Float(neg1health/neg1total);
   test2pp := Float(pos2sick/pos2total);
   test2np := Float(neg1health/neg2total);

   --Outputs
   Put("P(D | Pos1) = ");
   Put(test1pp);
   New_Line(1);
   Put("P(D | Pos2) = ");
   Put(test1np);
   New_Line(1);
   Put("P(H | Neg1) = ");
   Put(test2pp);
   New_Line(1);
   Put("P(H | Neg2) = ");
   Put(test2np);
   New_Line(1);
   if test1pp > test2pp and test1np > test2np then
      Put("Test 1 is better.");
   elsif test1pp < test2pp and test1np < test2np then
         Put("Test 1 is better.");
   else
         Put("Neither test is better.");

   end if;
   null;

end Adahw;
