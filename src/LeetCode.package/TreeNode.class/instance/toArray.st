serialization
toArray
	| queue result current |
	queue := LinkedList new.
	result := OrderedCollection new.
	queue addLast: self.
	[ queue notEmpty ]
		whileTrue: [ current := queue removeFirst.
			current
				ifNil: [ result add: nil ]
				ifNotNil: [ result add: current val.
					queue addLast: current left.
					queue addLast: current right ] ].
	[ result last isNil ] whileTrue: [ result removeLast ].
	^ result