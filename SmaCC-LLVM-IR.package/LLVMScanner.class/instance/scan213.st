generated
scan213
	self step.
	currentCharacter = $:
		ifTrue: [ ^ self recordAndReportMatch: #(257) ].
	currentCharacter = $_
		ifTrue: [ ^ self scan214 ].
	(currentCharacter isSafeForHTTP or: [ currentCharacter = $$ ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch