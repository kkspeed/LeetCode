private helpers
makeFizzBuzz
	"Generate Fizz / Buzz for a number"
	^[ :aNumber | aNumber % 15 == 0 
		ifTrue: [ 'FizzBuzz' ]
		ifFalse: [ aNumber % 5 == 0 
			ifTrue: [ 'Buzz' ]
			ifFalse: [  aNumber % 3 == 0 
				ifTrue: [ 'Fizz' ] 
				ifFalse: [ aNumber asString ] 
			] 
		] 
	]