*NewRegex
evaluateOnStack: aStack
	^ {
			NRCharInstruction new
				character: self;
				yourself
	}