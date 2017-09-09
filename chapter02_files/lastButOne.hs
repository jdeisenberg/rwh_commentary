-- lastButOne returns the next-to-last item in a list

lastButOne :: [a] -> a
lastButOne xs =
  if length xs == 2
  then head xs
  else lastButOne (tail xs)

lastButOneCheating :: [a] -> a
lastButOneCheating xs =
  head (drop (length xs - 2) xs)
