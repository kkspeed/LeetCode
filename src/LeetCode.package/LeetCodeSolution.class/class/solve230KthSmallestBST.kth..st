solve
solve230KthSmallestBST: aTreeNode kth: k
	^ aTreeNode
		ifNil: [ KthBSTSolveResult new setValue: 0 isInsufficient: true ]
		ifNotNil: [ (self solve230KthSmallestBST: aTreeNode left kth: k)
				ifInsufficient: [ :val | 
					k - val = 1
						ifTrue: [ KthBSTSolveResult new setValue: aTreeNode val isInsufficient: false ]
						ifFalse: [ (self solve230KthSmallestBST: aTreeNode right kth: k - val - 1) 
							ifInsufficient: [ :v | KthBSTSolveResult new setValue: k - v isInsufficient: true ] 
							ifNotInsufficient: [ :v | KthBSTSolveResult new setValue: v isInsufficient: false ] ] ]
				ifNotInsufficient: [ :val | KthBSTSolveResult new setValue: val isInsufficient: false ] ]