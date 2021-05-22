pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers; use Ada.Containers;

package body Sylcode is

   --------------------------
   -- Numeric_To_Syllables --
   --------------------------

   function Numeric_To_Syllables (Numeric_Input : Natural) return String is
      pragma Unreferenced (Numeric_Input);
   begin
      return "Dummy";
   end Numeric_To_Syllables;

   --------------------------
   -- Syllables_To_Numeric --
   --------------------------

   function Syllables_To_Numeric (Syllables_Input : String) return Natural is
      pragma Unreferenced (Syllables_Input);
   begin
      return 0;
   end Syllables_To_Numeric;

begin
   --  single combinations
   for V of Vowels loop
         Vowel_Combinations.Append (To_Unbounded_String ("" & V));
   end loop;

   --  double combinations
   for V1 of Vowels loop
      for V2 of Vowels loop
         Vowel_Combinations.Append (To_Unbounded_String (V1 & V2));
      end loop;
   end loop;

   for C of Consonants loop
      for VC of Vowel_Combinations loop
         Syllables.Append (To_Unbounded_String (C & To_String (VC)));
      end loop;
   end loop;

   for T of Syllables loop
      Put_Line (To_String (T));
   end loop;
   Put_Line (Count_Type'Image (Syllables.Length));

end Sylcode;
