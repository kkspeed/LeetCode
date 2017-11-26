solve
solve463IslandPerimeter: anArray
	"LeetCode solution: https://leetcode.com/problems/island-perimeter/description"

	| total |
	total := 0.
	anArray
		doWithIndex: [ :row :i | 
			row
				doWithIndex: [ :e :j | 
					e = 1
						ifTrue: [ total := total + (self getPerimeterCell: anArray at: i @ j dimen: anArray size @ row size) ] ] ].
	^ total