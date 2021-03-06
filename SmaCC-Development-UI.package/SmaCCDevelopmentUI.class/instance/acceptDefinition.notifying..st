actions
acceptDefinition: aStringOrAText notifying: aRequestor
	^ [ 
	SmaCCGrammarCompiler new buildDefinition: aStringOrAText.
	true ]
		on: SmaCCParserError
		do: [ :ex | 
			self parserClass
				ifNotNil: [ 
					| parserCompiler |
					parserCompiler := SmaCCGrammarCompiler new.
					parserCompiler
						category: self packageString;
						scannerClass: self scannerClassString;
						parserClass: self parserClassString.
					parserCompiler codeGenerator compileDefinitionComment: aStringOrAText asString.
					parserCompiler codeGenerator compileChanges ].
			self tabList selectedPageIndex: 1.
			self displayError: ex description at: ex tag position notifying: aRequestor.
			ex return: false ]