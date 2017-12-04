private helpers
convertToRPN: aString
	"Converts a string with +, -, (, ) and numbers to reverse polish notation"

	| rpn ops |
	rpn := OrderedCollection new.
	ops := OrderedCollection new.
	'[1-9]+|\+|\*|\/|\-|\(|\)' asRegex
		matchesIn: aString
		do: [ :token | 
			token isAllDigits
				ifTrue: [ rpn add: token asNumber ]
				ifFalse: [ token = '('
						ifTrue: [ ops add: token ]
						ifFalse: [ token = ')'
								ifTrue: [ [ ops isNotEmpty and: [ (ops last = '(') not ] ] whileTrue: [ rpn add: ops removeLast ].
									ops removeLast ]
								ifFalse: [ [ ops isNotEmpty and: [ (self opPrecedence: ops last) >= (self opPrecedence: token) and: [ (ops last = '(') not ] ] ] whileTrue: [ rpn add: ops removeLast ].
									ops add: token ] ] ] ].
	[ ops isNotEmpty ] whileTrue: [ rpn add: ops removeLast ].
	^ rpn