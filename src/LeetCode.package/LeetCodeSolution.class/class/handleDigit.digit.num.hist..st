private helpers
handleDigit: rep digit: d num: n hist: histogram
	| result |
	result := OrderedCollection new.
	[ histogram includesKey: rep ]
		whileTrue: [ result add: n.
			self takeOutDigit: histogram digit: d ].
	^ result