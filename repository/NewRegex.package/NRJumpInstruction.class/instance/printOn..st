printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(jmp ';
		<< self instructionIndex;
		<< $)