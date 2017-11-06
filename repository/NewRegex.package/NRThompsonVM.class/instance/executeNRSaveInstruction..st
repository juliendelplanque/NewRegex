executing
executeNRSaveInstruction: aNRSaveInstruction
	self executeNRInstruction: aNRSaveInstruction.
	
	(self subexpressionsIndexes at: aNRSaveInstruction slotIndex)
		add: self stringCounter.
	
	self currentList
		addLast: (NRThread new
						programCounter: self programCounter + 1;
						yourself)