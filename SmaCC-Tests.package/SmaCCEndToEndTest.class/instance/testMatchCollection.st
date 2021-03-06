tests
testMatchCollection
	| parserCompiler node |
	parserCompiler := SmaCCGrammarCompiler new.
	parserCompiler
		buildDefinition: '<number> : \d+; <whitespace> : \s+; 
			%root Parse ; %prefix Foo; %suffix Node;
			%left "+" "-" ;
			ExpressionList : ExpressionList Expression ''expression'' {{ExpressionList}}  | Expression ''expression'' {{ExpressionList}};
			Expression : Number ;
			Number : <number> ''number'' {{Number}} ;'.
	parserCompiler compileInto: 'TestScanner'
		andParser: 'TestParser'.
	node := self parserClass parse: '1 2 3 4'.
	self assert: (node match: node inContext: Dictionary new)