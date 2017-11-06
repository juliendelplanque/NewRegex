executing
executeNRVMEatingTestInstruction: aNRVMEatingTestInstruction
	self executeNRInstruction: aNRVMEatingTestInstruction.
	
	(aNRVMEatingTestInstruction selector value: self)
		ifFalse: [ ^ self ].
		
	self nextList
		addLast: (NRThread new
						programCounter: self programCounter + 1;
						yourself)