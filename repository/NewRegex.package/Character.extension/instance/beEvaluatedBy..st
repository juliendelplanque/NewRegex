*NewRegex
beEvaluatedBy: aNRCompiler
	self = $^
		ifTrue: [ 
			^ { NRVMTestInstruction selector: #isAtBeginningOfLine } ].
	self = $$
		ifTrue: [ 
			^ { NRVMTestInstruction selector: #isAtEndOfLine } ].
	self = $.
		ifTrue: [ 
			^ { NRVMEatingTestInstruction selector: #isAnyCharacter } ].
	^ {
			NRCharInstruction new
				character: self;
				yourself
	}