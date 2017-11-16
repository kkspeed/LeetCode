solve
solve264UglyNumberII: n
	| a b c a1 b1 c1 |
	a := 1.
	b := 2.
	c := 3.
	2 to: n do: [ :i | 
		a1 := a * 2.
		b1 := a * 3 min: b * 2.
		c1 := a * 5 min: (b * 3 min: c * 2).
		a := a1 min: b.
		b := b1 min: c.
		c := c1 ].
	^ a