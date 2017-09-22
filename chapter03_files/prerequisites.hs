-- Data types for course prerequisites at a community college.
--  A course has a department name, a course number, and a description, for example:
--
--    CHEM 001B - General Chemistry
--
-- This is a good candidate for a record type, with type synonyms for readability.

type Department = String
type CourseNumber = String
type Description = String

data Course = Course {
    department :: Department
  , courseNumber :: CourseNumber
  , description :: Description
} deriving (Show)

-- A prerequisite can be a single course:
--    CHEM 001B - Prerequisite: CHEM 001A
-- or a set of courses that must all be taken:
--    AUTO 101B - Prerequisite: AUTO 102 and AUTO 181A
-- or one course out of a group:
--    CHEM 030B - Prerequisite: CHEM 030A or CHEM 015 or CHEM 001A
-- or a “combo platter”:
--    BIOL 072 - Prerequisite: BIOL 071 and (CHEM 001A or CHEM 015 or CHEM 030A)
--       and MATH 013
--    ENGL 084A - Prerequisite: ENGL 102 or (ENGL 321 and ENGL 104)

data Prerequisite = 
    Single Course
  | All [Prerequisite]
  | Any [Prerequisite]
    deriving (Show)
-- and now, some code to see if this makes any damn sense

chem001a = Course "CHEM" "001A" "General Chemistry"
chem001b = Course "CHEM" "001B" "General Chemistry"
chem015  = Course "CHEM" "015" "Fundamentals of Chemistry"
chem030a = Course "CHEM" "030A" "Introduction to Chemistry"
chem030b = Course "CHEM" "030B" "Introduction to Chemistry"
auto102  = Course "AUTO" "102" "Automotive Systems"
auto181a = Course "AUTO" "181A" "Introduction to Alternative Fuel and Hybrid/Electric Vehicles"
auto181b = Course "AUTO" "181B" "Hybrid Electric Vehicle Maintenance and Repair"
biol071  = Course "BIOL" "071" "Human Anatomy"
biol072  = Course "BIOL" "072" "Human Physiology"
math013  = Course "MATH" "013" "Intermediate Algebra"
engl321  = Course "ENGL" "321" "Fundamentals of Reading"
engl102  = Course "ENGL" "102" "College Reading"
engl104  = Course "ENGL" "104" "Fundamentals of Composition"
engl084a = Course "ENGL" "084A" "Survey of American Literature I"

pChem001B = Single chem001a
pAuto181B = All [Single auto102, Single auto181a]
pChem030B = Any [Single chem030a, Single chem015, Single chem001a]
pBiol072 = All [Single biol071,
  Any [Single chem001a, Single chem015, Single chem030a],
  Single math013]
pEngl084a = Any [Single engl102, All [Single engl321, Single engl104]]


