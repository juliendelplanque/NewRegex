printing
textualInstruction
	^ String streamContents: [ :s | self printTextualInstructionOn: s ]