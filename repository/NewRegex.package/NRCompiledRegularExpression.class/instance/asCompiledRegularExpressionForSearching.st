converting
asCompiledRegularExpressionForSearching
	| newInstructions instructionsCopy |
	instructionsCopy := self instructions deepCopy.
	self shift: instructionsCopy indexesOf: 3.
	newInstructions := { 
		NRSplitInstruction new
			instructionIndex1: 2;
			instructionIndex2: 4;
			yourself.
		NRVMEatingTestInstruction new
			selector: #isAnyCharacter;
			yourself.
		NRJumpInstruction new
			instructionIndex: 1;
			yourself. } , instructionsCopy.
	^ self class new
			instructions: newInstructions;
			yourself