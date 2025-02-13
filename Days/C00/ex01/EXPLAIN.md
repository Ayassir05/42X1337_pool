## EXERCISE 01
* Create a function that displays the alphabet in lowercase, on a single line, by ascending order, starting from the letter 'a'.
* Here's how it should be prototyped:
```C
void	ft_print_alphabet(void);
```
* Files to turn in: ft_print_alphabet.c
* Allowed funcitons: ft_putchar
### why we give the x int data type and we know it contain character can u give me briefly explain for that?

* Great question! 😊

* Even though x holds a character ('a', 'b', ... 'z'), it is declared as an int because:
```
*C treats characters as integers

In C, characters (char) are actually stored as ASCII values, which are integers.
Example: 'a' is 97, 'b' is 98, etc.
Avoiding overflow issues

If x were declared as char, some compilers might treat it as signed (-128 to 127), which could cause unexpected behavior.
Declaring x as int ensures it can safely hold values from 'a' (97) to 'z' (122) without issues.
Standard practice in loops

In loops that compare characters (while (x <= 'z')), using int prevents potential type mismatches or implicit conversions.
```
#Conclusion
Declaring x as int ensures safer and more predictable behavior, even though it holds a character. 🚀
