solve
solve423ReconstructDigits: aString
	| histogram result |
	histogram := Dictionary new.
	result := OrderedCollection new.
	aString do: [ :c | histogram at: c put: (histogram at: c ifAbsent: 0) + 1 ].
	result
		addAll:
			(self
				handleDigit: $z
				digit: 'zero'
				num: '0'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $w
				digit: 'two'
				num: '2'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $x
				digit: 'six'
				num: '6'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $u
				digit: 'four'
				num: '4'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $r
				digit: 'three'
				num: '3'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $h
				digit: 'eight'
				num: '8'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $f
				digit: 'five'
				num: '5'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $v
				digit: 'seven'
				num: '7'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $o
				digit: 'one'
				num: '1'
				hist: histogram).
	result
		addAll:
			(self
				handleDigit: $n
				digit: 'nine'
				num: '9'
				hist: histogram).
	^ result sorted fold: [ :x :y | x , y ]