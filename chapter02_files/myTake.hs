-- writing your own version of take

myTake :: Int -> [a] -> [a]
myTake n xs =
  if n <= 0 || null xs
  then []
  else (head xs) : (myTake (n - 1) (tail xs))
