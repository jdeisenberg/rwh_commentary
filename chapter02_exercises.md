# Exercise 1

Haskell has built-in trigonometric functions `sin`, `cos`, and `tan`, which take their argument in radians, and `asin`, `acos`, and `atan`, which return an argument in radians.

Write these two utility functions:

```
    -- takes an argument in degrees and returns the value in radians
    radians :: Floating a => a -> a

    -- takes an argument in radians and returns the value in degrees
    degrees :: Floating a => a -> a
```

Use those functions to write functions `sinDeg`, `cosDeg`,  and `tanDeg` which take sine, cosine, and tangent of their argument given in degrees.

Write functions `asinDeg`, `acosDeg`, and `atanDeg` which take an argument and return a the arcsine, arccosine, and arctangent in degrees.

Note: To convert degrees to radians, multiply by π (`pi`) and divide by 180.0; use algebra to figure out the reverse formula :)

My solution is in file `trigUtils.hs` in the `chapter02_files` directory.

# Exercise 2

Write your own version of `take`; call it `myTake`. The `myDrop` function in the book should give you a good starting point. Hint -- the `:` operator is your friend.

My solution is in file `myTake.hs` in the `chapter02_files` directory.
