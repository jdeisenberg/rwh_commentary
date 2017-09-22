A course has a department name, a course number, and a description, for example:

    CHEM 001B - General Chemistry

This is a good candidate for a record type, with type synonyms for readability.

```
type Department = String
type CourseNumber = String
type Description = String

data Course = Course {
    department :: Department
  , courseNumber :: CourseNumber
  , description :: Description
} deriving (Show)
```

A prerequisite can be a single course:

    CHEM 001B - Prerequisite: CHEM 001A

or a set of courses that must all be taken:

    AUTO 181B - Prerequisite: AUTO 102 and AUTO 181A

or one course out of a group:

    CHEM 030B - Prerequisite: CHEM 030A or CHEM 015 or CHEM 001A

Here is a data type that will handle these:

```
data Prerequisite = 
    Single Course
  | All [Course]
  | Any [Course]
```

But it *won’t* handle a “combo platter” prerequisite like this:


    BIOL 072 - Prerequisite: BIOL 071 and (CHEM 001A or CHEM 015 or CHEM 030A) and MATH 013
    ENGL 084A - Prerequisite: ENGL 102 or (ENGL 321 and ENGL 104)

This is where a recursive definition will be useful. If I replace `[Course]` with `[Prerequisite]`, that will handle any of the situations above:
    
So here’s the final datatype:

```
data Prerequisite = 
    Single Course
  | All [Prerequisite]
  | Any [Prerequisite]
```
