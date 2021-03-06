initialize-release
addTestPageToDefinitionPage: aDefinitionPagePalette
	| aTestPage |
	aTestPage := AlignmentMorph newColumn
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellPositioning: #leftCenter;
		color: Color transparent;
		layoutInset: 0;
		yourself.
	self addButtonsToTestPage: aTestPage.
	self addTextToTestPage: aTestPage.
	aDefinitionPagePalette
		addPage:
			(aDefinitionPagePalette newContentMorph
				addMorph: aTestPage;
				yourself)
		label: 'Test'