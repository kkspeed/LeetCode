solve
solve508MostFrequentSubtreeSum: aTree
	| dict maxVal  |
	maxVal := SmallInteger minVal.
	dict := Dictionary new.
	self calcTreeSum: aTree with: dict.
	dict keysDo: [ :k | maxVal := (dict at: k) max: maxVal ].
	^ dict keys select: [ :k | (dict at: k) = maxVal ]