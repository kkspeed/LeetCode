comparing
= aNode
	"compare whether 2 binary tree equals. ref: #100 at leetcode.com/problems/same-tree"

	^ aNode ifNil: [ false ] ifNotNil: [ val = aNode val and: [ left = aNode left and: [ right = aNode right ] ] ]