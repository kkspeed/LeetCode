private helpers
addChar: c1 with: c2 carry: i
	| sum |
	sum := c1 asInteger + c2 asInteger + i.
	^ (sum - (sum % 10)) / 10 @ (sum % 10) asString