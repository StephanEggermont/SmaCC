generated-reduction actions
reduceActionForarray_creation_expression1: nodes
	| result |
	result := JavaNewArrayNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result dimExpressions.
	result addTokens: ((nodes at: 4) at: 1) to: result left.
	result addTokens: ((nodes at: 4) at: 2) to: result right.
	^ result