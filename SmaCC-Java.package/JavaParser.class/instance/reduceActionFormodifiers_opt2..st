generated-reduction actions
reduceActionFormodifiers_opt2: nodes
	| result |
	result := Array new: 1.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	^ result