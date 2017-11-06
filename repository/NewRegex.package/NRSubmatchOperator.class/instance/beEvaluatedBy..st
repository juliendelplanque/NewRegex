evaluating
beEvaluatedBy: aNRCompiler
	| popped parenthesesIndex |
	popped := aNRCompiler stack pop.
	parenthesesIndex := aNRCompiler nextParenthesesIndex.
	self
		shift: popped indexesOf: 1;
		shiftIndexPointing2To1: popped.
	^ { NRSaveInstruction new
			slotIndex: parenthesesIndex;
			yourself } ,
		popped ,
		{ NRSaveInstruction new
			slotIndex: parenthesesIndex + 1;
			yourself }