evaluating
evaluateOnStack: aStack
	| popped |
	popped := aStack pop.
	^ popped , { NRSplitInstruction new
						instructionIndex1: 1;
						instructionIndex2: popped size + 2;
						yourself }