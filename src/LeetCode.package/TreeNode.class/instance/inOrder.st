traversing
inOrder
	"In-Order traversal: #94"

	| result |
	result := OrderedCollection new.
	left ifNotNil: [ result addAll: left inOrder ].
	result add: val.
	right ifNotNil: [ result addAll: right inOrder ].
	^ result
