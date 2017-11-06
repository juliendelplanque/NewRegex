executing
executeNRVMTestInstruction: aNRVMTestInstruction
	self executeNRInstruction: aNRVMTestInstruction.
	
	(aNRVMTestInstruction selector value: self)
		ifFalse: [ ^ self ].
		
	self currentList
		addLast: (NRThread new
						programCounter: self programCounter + 1;
						yourself)