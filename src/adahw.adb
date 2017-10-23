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
   pos1total, neg1total, pos1sick, neg1health, pos2total, neg2total, pos2sick, neg2health: Integer := 0;
   type patientRecords is array (Positive range <>, Positive range <>) of Integer;
   i, numberofpatients: Integer;
   test1pp, test1np, test2pp, test2np: Float;

   procedure GetInput (records: in out patientRecords) is
      --Temp holder to process whitespace
      --sp : Character;
      --For loop to get patient data input and insert into an array.
   begin
      i := 1;
      while i <= numberofpatients loop
         Put("enter patient number: ");
         Get(records(i, 1));
         Put("enter sick value: ");
         Get(records(i, 2));
         Put("enter test 1: ");
         Get(records(i, 3));
         Put("enter test 2: ");
         Get(records(i, 4));
         i := i + 1;
         Put(i);
         end loop;
   end GetInput;

   procedure CalcTotals (records: in patientRecords) is
      --Calculate total positive and negative tests for sick and health
      begin
      for I of records loop
      if records(I, 3) = 1 then
         --Increase Positive test totals
         pos1total := pos1total + 1;
         if records(I, 2) = 1 then
            --Increase Positive Test 1
            pos1sick := pos1sick + 1;
         end if;
      else
         --Increase Negative test totals
         if records(I, 2) = 0 then
            --Increase Neagtive Test 1
           neg1health := neg1health + 1;
         end if;
      end if;
      if records(I, 4) = 1 then
         --Increase Positive test totals
         pos2total := pos2total + 1;
         if records(I, 2) = 1 then
            --Increase Positive Test 1
            pos2sick := pos2sick + 1;
         end if;
      else
         --Increase Negative test totals
         if records(I, 2) = 0 then
            --Increase Neagtive Test 1
           neg2health := neg2health + 1;
         end if;
      end if;
     end loop;
   end CalcTotals;

   procedure CalcProb is
      --Function to calculate and output probabilities.
   begin
      if pos1total = 0 then
        test1pp := Float(pos1sick);
      else
         test1pp := Float(pos1sick/pos1total);
      end if;
      if neg1total = 0 then
        test1np := Float(neg1health);
      else
         test1np := Float(neg1health/neg1total);
         end if;
      if pos2total = 0 then
        test2pp := Float(pos2sick);
      else
         test2pp := Float(pos2sick/pos2total);
         end if;
      if neg2total = 0 then
        test2np := Float(neg2health);
      else
         test2np := Float(neg2health/neg2total);
         end if;
   end CalcProb;

   procedure Output is
      --Outputs
   begin
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
         Put("Test 2 is better.");
   else
         Put("Neither test is better.");
      end if;
   end Output;


begin
   Put("enter number of records: ");
   Get(numberofpatients);
   declare
      records : patientrecords (1..numberofpatients, 1..4);
      begin
      GetInput(records);
      CalcTotals(records);
      CalcProb;
      Output;
      end;
null;
end Adahw;
