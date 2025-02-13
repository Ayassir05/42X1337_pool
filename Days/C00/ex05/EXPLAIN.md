# Step-by-Step Breakdown:
#### Variables:

i, j, k are declared as int but store character digits ('0' to '9').
#### First Loop (i):

Runs from '0' to '7' (because i is the first digit, and we need space for two more).
#### Second Loop (j):

Always starts from i + 1, ensuring j is greater than i (no repeated digits).
Runs up to '8' (to leave space for k).
#### Third Loop (k):

Starts from j + 1 to ensure k > j > i.
Runs up to '9'.
#### Printing (write):

Prints i, j, and k (forming a 3-digit combination).
If i != '7', prints ", " to separate combinations (avoids a trailing comma at the end).
## Final Output (Example):
```
012, 013, 014, ..., 789
```
- No duplicate digits (e.g., 112 is not possible).
- No repeated combinations (e.g., 210 is not printed because 012 already exists).
**Why int Instead of char?**
Even though i, j, and k hold characters, they are declared as int to avoid sign issues and make comparisons (<= '9') smoother.
