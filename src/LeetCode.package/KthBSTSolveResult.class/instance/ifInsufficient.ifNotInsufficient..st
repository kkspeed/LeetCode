accessing
ifInsufficient: aBlock ifNotInsufficient: goodBlock
	^isInsufficient ifTrue: [ aBlock value: val ] ifFalse: [ goodBlock value: val ]