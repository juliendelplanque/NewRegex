evaluating
beEvaluatedBy: aNRCompiler
	| popped |
	popped := aNRCompiler stack pop.
	^ popped , { NRSplitInstruction new
						instructionIndex1: 1;
						instructionIndex2: popped size + 2;
						yourself }