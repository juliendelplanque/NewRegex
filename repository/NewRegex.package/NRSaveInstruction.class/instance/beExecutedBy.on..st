execution
beExecutedBy: aNRVirtualMachine on: aStream
	
	(aNRVirtualMachine subexpressionsIndexes at: self slotIndex) add: aNRVirtualMachine stringCounter.
	aNRVirtualMachine currentList
		addLast: (NRThread new
						programCounter: aNRVirtualMachine programCounter + 1;
						yourself)