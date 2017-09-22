inter :: a -> [[a]] -> [a]
inter _ [] = []
inter _ [x] = x
inter delim [x, y] = x ++ [delim] ++ y
inter delim (x:xs) = x ++ [delim] ++ (inter delim xs)

