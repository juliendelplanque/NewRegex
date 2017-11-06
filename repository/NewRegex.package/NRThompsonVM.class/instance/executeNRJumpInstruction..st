executing
executeNRJumpInstruction: aNRJumpInstruction
	self executeNRInstruction: aNRJumpInstruction.
	
	self currentList
		addLast: (NRThread new
						programCounter: aNRJumpInstruction instructionIndex;
						yourself)