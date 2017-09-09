-- trig utilities

-- convert a value in degrees to radians
radians :: Floating a => a -> a
radians x =  pi * x / 180.0

-- convert a value in radians to degrees
degrees :: Floating a => a -> a
degrees x =  180.0 * x / pi

-- return the sine of a value given in degrees
sinDeg :: Floating a => a -> a
sinDeg x = sin (radians x)

-- return the cosine of a value given in degrees
cosDeg :: Floating a => a -> a
cosDeg x = cos (radians x)

-- return the tangent of a value given in degrees
tanDeg :: Floating a => a -> a
tanDeg x = tan (radians x)

-- return the arcsine of a value as degrees
asinDeg :: Floating a => a -> a
asinDeg x = degrees (asin x)

-- return the arccosine of a value as degrees
acosDeg :: Floating a => a -> a
acosDeg x = degrees (acos x)

-- return the arctangent of a value as degrees
atanDeg :: Floating a => a -> a
atanDeg x = degrees (atan x)
