solution
solve412FizzBuzz: aNumber
	"Solution to leetcode 412: https://leetcode.com/problems/fizz-buzz/description/"
	^(1 to: aNumber) collect: (self makeFizzBuzz)