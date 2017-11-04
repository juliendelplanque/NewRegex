printing
textualInstructions
	^ String streamContents: [ :s |
		self printTextualInstructionsOn: s ]