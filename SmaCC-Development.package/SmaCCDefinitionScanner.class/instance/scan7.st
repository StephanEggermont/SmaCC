generated
scan7
	[ 
	self step.
	currentCharacter = $*
		ifTrue: [ 
			[ 
			self step.
			currentCharacter = $* ] whileTrue.
			currentCharacter = $/
				ifTrue: [ ^ self recordAndReportMatch: #(32) ].
			^ self scan7 ] ] repeat