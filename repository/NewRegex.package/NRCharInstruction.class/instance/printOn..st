printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< '(char ';
		<< self character;
		<< $)