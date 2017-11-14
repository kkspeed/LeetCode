solve
solve643MaximumSubarrayI: aArray subsize: k
	| sum maxAverage |
	maxAverage := -1 << 31.
	sum := 0.
	aArray
		doWithIndex: [ :item :index | 
			index <= k
				ifTrue: [ sum := sum + item ]
				ifFalse: [ maxAverage := sum / k max: maxAverage.
					sum := sum - (aArray at: index - k) + item ] ].
	maxAverage := maxAverage max: sum / k.
	^ maxAverage