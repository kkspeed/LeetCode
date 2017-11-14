solve
solve415AddStrings: s1 with: s2
	"LeetCode #415"

	| carry result tmp a b |
	carry := 0.
	result := ''.
	s1 size < s2 size
		ifTrue: [ a := ('0' repeat: s1 size - s2 size) , s1.
			b := s2 ]
		ifFalse: [ a := s1.
			b := ('0' repeat: s1 size - s2 size) , s2 ].
	b size to: 1 by: -1 do: [ :i | 
		tmp := self addChar: (a at: i) asString with: (b at: i) asString carry: carry.
		result := tmp y , result.
		carry := tmp x ].
	carry > 0
		ifTrue: [ result := carry asString , result ].
	^ result