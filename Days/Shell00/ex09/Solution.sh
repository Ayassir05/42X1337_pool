42 string 42 42 file type

STEPS:
mkdir ex09
cd ex09
vim ft_magic
42 string 42 42 file type
<offset> <type> <value> <description>
<offset>: The byte position where you want to check the data (in this case, 42).
<type>: The type of value to look for. For a string, use string.
<value>: The string you're looking for (in this case, "42").
<description>: A description of what you're checking "42 file type"

42: Offset,check at byte 42.
string: The type, indicating you're looking for a string.
42: The string value you're looking for at byte 42.
Contains "42" at byte 42: A description that will be shown when the magic rule is triggered
