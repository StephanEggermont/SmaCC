generated
scanSplit9
	self recordMatch: #(71).
	self step.
	currentCharacter = $a
		ifTrue: [ 
			self recordMatch: #(71).
			self step.
			currentCharacter = $l
				ifTrue: [ 
					self recordMatch: #(71).
					self step.
					currentCharacter = $l
						ifTrue: [ 
							self recordMatch: #(71).
							self step.
							currentCharacter = $y
								ifTrue: [ 
									self recordMatch: #(61 71).
									self step.
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $a and: $z ] ] ])
										ifTrue: [ 
											[ 
											self recordMatch: #(71).
											self step.
											(currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
												whileTrue ].
									^ self reportLastMatch ].
							((currentCharacter between: $0 and: $9)
								or: [ 
									(currentCharacter between: $A and: $Z)
										or: [ currentCharacter = $_ or: [ (currentCharacter between: $a and: $x) or: [ currentCharacter = $z ] ] ] ])
								ifTrue: [ 
									[ 
									self recordMatch: #(71).
									self step.
									(currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
										whileTrue ].
							^ self reportLastMatch ] ].
			((currentCharacter between: $0 and: $9)
				or: [ 
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter = $_ or: [ (currentCharacter between: $a and: $k) or: [ currentCharacter between: $m and: $z ] ] ] ])
				ifTrue: [ 
					[ 
					self recordMatch: #(71).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $b and: $z ] ] ])
		ifTrue: [ 
			[ 
			self recordMatch: #(71).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z) or: [ currentCharacter = $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch