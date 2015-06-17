# n-Queens
Determine if input is a valid solution to the [n-queens](https://en.wikipedia.org/wiki/Eight_queens_puzzle) problem.

## Data Input

Enter query as a string of board positions, of which the following are all valid inputs:

`"-Q---QQ--" `

Or:

`"Q-- -Q- --Q"`

Or:
	

	"Q--
	 -Q-
	 --Q"

## Usage
To run against preset board configurations, simply run the script:

`ruby nQueens.rb`

## Output

Valid Solution for 5x5:

	Q----
	--Q--
	----Q
	-Q---
	---Q- 

Invalid Solution for 5x5

	QQQQQ
	-----
	-----
	-----
	----- 

Invalid Solution for 5x5

	Q----
	Q----
	Q----
	Q----
	Q---- 

Invalid Solution for 5x5

	Q----
	-Q---
	--Q--
	---Q-
	----Q 

Invalid Solution for 5x5

	----Q
	---Q-
	--Q--
	-Q---
	Q---- 
