
-- Find a palindrome recursively.
-- an empty list or a single item list is a palindrome
-- otherwise, if the first and last element are identical,
-- then remove them, and see if the remaining list is a palindrome.

palindrome :: (Eq a) => [a] -> Bool
palindrome [] = True
palindrome [_] = True
palindrome xs 
  | (head xs) == (last xs) = palindrome (init (tail xs))
  | otherwise = False

