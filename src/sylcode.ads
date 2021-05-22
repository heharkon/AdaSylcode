with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Sylcode is
   pragma Elaborate_Body;

   function Numeric_To_Syllables (Numeric_Input : Natural) return String;
   function Syllables_To_Numeric (Syllables_Input : String) return Natural;

private
   type Syl_Range is range 0 .. 255;
   package Syl_Vector is new Ada.Containers.Vectors
     (Index_Type => Natural, Element_Type => Unbounded_String);
   --  use Syl_Vector;

   Syllables : Syl_Vector.Vector;
   Vowel_Combinations : Syl_Vector.Vector;

   Vowels : String := "aeiouy";
   Consonants : String := "dflprst";

end Sylcode;
