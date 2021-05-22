with Ada.Text_IO; use Ada.Text_IO;
with Sylcode;

procedure Tester is
begin
   Put_Line (Sylcode.Numeric_To_Syllables (4));
end Tester;
