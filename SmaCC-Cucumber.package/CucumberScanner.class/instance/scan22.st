generated
scan22
	self step.
	currentCharacter = $e
		ifTrue: [ 
			self step.
			currentCharacter = $n
				ifTrue: [ ^ self scan21 ].
			currentCharacter = $|
				ifTrue: [ ^ self recordAndReportMatch: #(10) ].
			(currentCharacter <= Character tab
				or: [ 
					(currentCharacter between: Character pageUp and: Character newPage)
						or: [ 
							(currentCharacter between: (Character value: 14) and: $m)
								or: [ (currentCharacter between: $o and: ${) or: [ currentCharacter >= $} ] ] ] ])
				ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter = $|
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	(currentCharacter <= Character tab
		or: [ 
			(currentCharacter between: Character pageUp and: Character newPage)
				or: [ 
					(currentCharacter between: (Character value: 14) and: $d)
						or: [ (currentCharacter between: $f and: ${) or: [ currentCharacter >= $} ] ] ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch