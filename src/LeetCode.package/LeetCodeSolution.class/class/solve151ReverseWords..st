solution
solve151ReverseWords: aString
	"Solution to #151: https://leetcode.com/problems/reverse-words-in-a-string/description/"
	^' ' join: (aString splitOn: ' ') reverse