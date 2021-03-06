public
testDefaultClassNameWithUnderscore
	| parserCompiler node |
	parserCompiler := SmaCCGrammarCompiler new.
	parserCompiler
		buildDefinition: '%root Test ; %prefix Foo; %suffix Node; 
			test_class : "a" ''letter'' {{}};'.
	parserCompiler compileInto: 'TestScanner'
		andParser: 'TestParser'.
	node := self parserClass parse: 'a'.
	self assert: node class name asString = 'FooTestClassNode'.
	self assert: node class superclass name asString = 'FooTestNode'.
	(self lookupType: #FooTestNodeVisitor) new acceptNode: node