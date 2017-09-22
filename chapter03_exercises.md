# Exercise 1

Write a function that tells if a list is a palindrome; its signature is

```
palindrome :: (Eq a) => [a] -> Bool
```

Where `(Eq a) =>` means “items of type `a` can be compared for equality. Do *not* use the built-in `reverse` function. Hint: use the `init` function, which returns everything except the last item in a list. See `palindrome.hs` in the `chapter03_files` directory.

# Exercise 2

I am doing a project for the community college where I work to help students figure out what courses they need to take and when. I have a spreadsheet that gives prerequisites for courses. A course has a department name, a course number, and a description, for example:

    CHEM 001B - General Chemistry
    
(there’s more information that may be useful later, but for now, that’s all I want to specify).

Some prerequisites are simple:

    CHEM 001B - Prerequisite: CHEM 001A
    AUTO 181B - Prerequisite: AUTO 102 and AUTO 181A
    CHEM 030B - Prerequisite: CHEM 030A or CHEM 015 or CHEM 001A
    
Some of them, not so simple:

    BIOL 072 - Prerequisite: BIOL 071 and (CHEM 001A or CHEM 015 or CHEM 030A)
       and MATH 013
    ENGL 084A - Prerequisite: ENGL 102 or (ENGL 321 and ENGL 104)

Purpose of this exercise: create data types appropriate to holding this sort of data.
There aren’t any right or wrong answers for this one; it’s somewhat open-ended. My solution is in file `prerequisites.hs` in the `chapter03_files` directory, and my thought process is in `prerequisites.md` in the same directory.

