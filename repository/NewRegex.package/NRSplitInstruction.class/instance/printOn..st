printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(split ';
		<< self instructionIndex1;
		<< ', ';
		<< self instructionIndex2;
		<< $)