serialization
fromArray: anArray
	"Construct a binary tree from array. The array is defined consistently with: https://leetcode.com/faq/#binary-tree"

	| leafQueue index root current |
	^ anArray
		ifEmpty: [ nil ]
		ifNotEmpty: [ leafQueue := LinkedList new.
			root := TreeNode new val: (anArray at: 1).
			leafQueue addLast: root.
			index := 2.
			[ leafQueue isNotEmpty ]
				whileTrue: [ current := leafQueue removeFirst.
					index <= anArray size
						ifTrue: [ (anArray at: index) ifNotNil: [ current left: (TreeNode new val: (anArray at: index)) ].
							(index + 1 <= anArray size and: [ (anArray at: index + 1) isNotNil ])
								ifTrue: [ current right: (TreeNode new val: (anArray at: index + 1)) ].
							index := index + 2.
							current left ifNotNil: [ leafQueue addLast: current left ].
							current right ifNotNil: [ leafQueue addLast: current right ] ] ].
			root ]