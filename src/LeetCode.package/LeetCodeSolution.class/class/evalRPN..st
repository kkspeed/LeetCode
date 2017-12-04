private helpers
evalRPN: aRPN
	| stack a b |
	stack := OrderedCollection new.
	aRPN
		do: [ :x | 
			x isNumber
				ifTrue: [ stack add: x ]
				ifFalse: [ a := stack removeLast.
					b := stack removeLast.
					x = '+'
						ifTrue: [ stack add: b + a ].
					x = '-'
						ifTrue: [ stack add: b - a ].
					x = '*'
					  ifTrue: [ stack add: b * a ].
					x = '/'
					  ifTrue: [ stack add: b // a ] ] ].
	^ stack removeLast