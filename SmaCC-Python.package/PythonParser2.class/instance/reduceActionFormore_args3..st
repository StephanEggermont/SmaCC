generated-reduction actions
reduceActionFormore_args3: nodes
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 1).
	result at: 2 put: ((nodes at: 3) at: 2).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 3).
	^ result