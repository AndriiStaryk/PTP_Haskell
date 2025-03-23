--Переставити елементи списку таким чином, 
--щоб спочатку списку йшли непарні числа,
-- а за ними – парні.

reorderOddsEvens :: [Int] -> [Int]
reorderOddsEvens elems = [oth_elem | oth_elem <- elems, odd oth_elem] 
                      ++ [oth_elem | oth_elem <- elems, even oth_elem]