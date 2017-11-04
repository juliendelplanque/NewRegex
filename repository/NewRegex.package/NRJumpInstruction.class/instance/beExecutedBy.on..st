execution
beExecutedBy: aNRVirtualMachine on: aStream
	aNRVirtualMachine currentList
		addLast: (NRThread new
						programCounter: self instructionIndex;
						yourself)