generated
scan1
	[ 
	self step.
	currentCharacter = $"
		ifTrue: [ ^ self recordAndReportMatch: #(158) ].
	currentCharacter = $\
		ifTrue: [ 
			self step.
			currentCharacter = $x
				ifTrue: [ ^ self scan2 ].
			('Uu' includes: currentCharacter)
				ifTrue: [ 
					self step.
					currentCharacter isHexDigit
						ifTrue: [ 
							2
								timesRepeat: [ 
									self step.
									currentCharacter isHexDigit
										ifFalse: [ ^ self reportLastMatch ] ].
							^ self scan2 ].
					^ self reportLastMatch ].
			(('"''0\' includes: currentCharacter)
				or: [ (currentCharacter between: $a and: $b) or: [ 'fnrtv' includes: currentCharacter ] ])
				ifTrue: [ ^ self scan1 ].
			^ self reportLastMatch ].
	currentCharacter <= Character tab
		or: [ 
			(currentCharacter between: Character pageUp and: $!)
				or: [ (currentCharacter between: $# and: $[) or: [ currentCharacter >= $] ] ] ] ] whileTrue.
	^ self reportLastMatch