evaluating
evaluateOnStack: aStack
	| popped |
	popped := aStack pop.
	self shift: popped indexesOf: 1.
	^ { NRSplitInstruction new
			instructionIndex1: 2;
			instructionIndex2: popped size + 2;
			yourself } , popped