executing
executeNRCharInstruction: aNRCharInstruction
	self executeNRInstruction: aNRCharInstruction.
	
	inputStream peek = aNRCharInstruction character
		ifFalse: [ ^ self ].
	
	self nextList
		addLast: (NRThread new
						programCounter: self programCounter + 1;
						yourself)