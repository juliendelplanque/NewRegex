evaluating
beEvaluatedBy: aNRCompiler
	| popped |
	popped := aNRCompiler stack pop.
	self shift: popped indexesOf: 1.
	^ { NRSplitInstruction new
			instructionIndex1: 2;
			instructionIndex2: popped size + 3;
			yourself } , 
		popped , 
		{ NRJumpInstruction new
			instructionIndex: 1;
			yourself }