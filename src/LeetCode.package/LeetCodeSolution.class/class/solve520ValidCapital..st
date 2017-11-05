solution
solve520ValidCapital: aString
	"LeetCode #520 https://leetcode.com/problems/detect-capital/description/"
	^aString isEmpty 
	or: [
		(aString allSatisfy: [ :x | x isUppercase ])
		or: [ (aString allSatisfy: [ :x | x isLowercase ]) 
			or: [ (aString at: 1) isUppercase and: [ aString allButFirst allSatisfy: [:x | x isLowercase ] ] ]
		]
	]