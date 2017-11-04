execution
beExecutedBy: aNRVirtualMachine on: aStream
	aStream peek = self character
		ifFalse: [ ^ self ].
	
	aNRVirtualMachine nextList
		addLast: (NRThread new
						programCounter: aNRVirtualMachine programCounter + 1;
						yourself)