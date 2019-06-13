# Knights-Tour
A Knights-Tour Solver

In a game of chess the horse is a peculiar piece. This moves in a different way from all
the other parts of the game. Its motion describes an L, ie, e, moves two squares in the
horizontal and one vertical, or two squares vertically and one horizontal.

**Problem**


In this exercise we will address a type of program-like problem that belongs to
class of problems that can be solved by the technique called backtracking. This technique
It is widely used in the resolution of problems in computational logic.

This problem is a variant of the so-called Knight's Tour problem and concerns
exhaustive search (but nothing) of solutions.

Consider an array n? n that will represent a chessboard. Given a position
the coordinate format for the horse, and a set of positions already occupied (i.e. a
of positions that are not available to them are already occupied by existing pieces), it will
run (using the horse) all remaining squares passing only once in each
one of them?

**Input**

The entry of this exercise consists of a line containing the integer n representing the size
of the board no. n, where the first position is (0, 0).

In the next line is the initial position of the horse in the ij format.

A line with the integer k indicating the number of positions already occupied, followed by k lines,
each containing two integers representing the coordinates of a position occupied in the
format i j.

**Output**

A simple line with the string YES if there is a valid path or NO otherwise.

**Constraints**

1 <= n <= 8   0 <= i,j < n    0 <= k < n*n

**Sample Input 1**

8

0 0

0

**Sample Output 1**

YES

**Sample Input 2**

8

0 0

2

1 2

2 1

**Sample Output 2**

NO

**Sample Input 3**

2

1 1

0

**Sample Output 3**

NO
