execution
beExecutedBy: aNRVirtualMachine on: aStream
	(self selector value: aNRVirtualMachine)
		ifFalse: [ ^ self ].
		
	aNRVirtualMachine currentList
		addLast: (NRThread new
						programCounter: aNRVirtualMachine programCounter + 1;
						yourself)