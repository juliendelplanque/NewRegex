execution
beExecutedBy: aNRVirtualMachine on: aStream
	aNRVirtualMachine currentList
		addLast: (NRThread new
						programCounter: self instructionIndex1;
						yourself).
	aNRVirtualMachine currentList
		addLast: (NRThread new
						programCounter: self instructionIndex2;
						yourself).