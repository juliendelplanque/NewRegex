evaluating
beEvaluatedBy: aNRCompiler
	| popped1 popped2 |
	popped2 := aNRCompiler stack pop.
	popped1 := aNRCompiler stack pop.
	self
		shift: popped1 indexesOf: 1;
		shift: popped2 indexesOf: popped1 size + 2.
	
	^ { NRSplitInstruction new
			instructionIndex1: 2;
			instructionIndex2: popped1 size + 3;
			yourself } ,
		popped1 ,
		{ NRJumpInstruction new
			instructionIndex: popped1 size + popped2 size + 3 } ,
		popped2