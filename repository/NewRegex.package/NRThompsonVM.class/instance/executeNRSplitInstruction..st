executing
executeNRSplitInstruction: aNRSplitInstruction
	self executeNRInstruction: aNRSplitInstruction.
		
	self currentList
		addLast: (NRThread new
						programCounter: aNRSplitInstruction instructionIndex1;
						yourself);
		addLast: (NRThread new
						programCounter: aNRSplitInstruction instructionIndex2;
						yourself).