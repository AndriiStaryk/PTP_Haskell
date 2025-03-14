--Знайти N найбільших елементів списку та сформувати з них новий список.


_somesort :: Ord t => [t] -> [t]
_somesort [] = []
_somesort (elem:elems) = _somesort [oth_elem | oth_elem <- elems, oth_elem < elem] 
                                ++ [elem]
                                ++ _somesort [oth_elem | oth_elem <- elems, oth_elem >= elem] 


_take :: Int -> [t] -> [t]
_take amount _ | amount < 1 = []
_take _ [] = []
_take amount (elem:elems) = elem : _take (amount-1) elems

takeNLargestFrom :: Ord t => Int -> [t] -> [t]

takeNLargestFrom n elems
    | n <= 0    = [] 
    | otherwise = reverse (_take n (reverse (_somesort elems)))


