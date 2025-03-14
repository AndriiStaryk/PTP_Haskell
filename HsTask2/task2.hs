--Знайти N-ий елемент списку та позиції всіх його входжень у список.

findElementAndPositions :: Int -> [Int] -> (Maybe Int, [Int])
findElementAndPositions n elems
    | n < 0 || n >= length elems = (Nothing, []) 
    | otherwise = (Just target, positions)
  where
    target = elems !! n 
    positions = [i | (x, i) <- zip elems [0..], x == target]  
