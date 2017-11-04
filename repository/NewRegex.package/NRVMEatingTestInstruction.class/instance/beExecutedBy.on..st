execution
beExecutedBy: aNRVirtualMachine on: aStream
	(self selector value: aNRVirtualMachine)
		ifFalse: [ ^ self ].
		
	aNRVirtualMachine nextList
		addLast: (NRThread new
						programCounter: aNRVirtualMachine programCounter + 1;
						yourself)