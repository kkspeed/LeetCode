private helpers
getPerimeterCell: anArray at: aPoint dimen: d
	| i j perim|
	perim := 4.
	i := aPoint x.
	j := aPoint y.
	(i > 1 and: [ ((anArray at: i - 1) at: j) = 1 ])
		ifTrue: [ perim := perim - 1 ].
	(j > 1 and: [ ((anArray at: i) at: j - 1) = 1 ])
		ifTrue: [ perim := perim - 1 ].
	(i < d x and: [ ((anArray at: i + 1) at: j) = 1 ])
		ifTrue: [ perim := perim - 1 ].
	(j < d y and: [ ((anArray at: i) at: j + 1) = 1 ])
		ifTrue: [ perim := perim - 1 ].
	^ perim