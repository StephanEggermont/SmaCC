generated-reduction actions
reduceActionFormember_declarator3: nodes
	| result |
	result := CSMemberDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result _value: (nodes at: 3).
	^ result