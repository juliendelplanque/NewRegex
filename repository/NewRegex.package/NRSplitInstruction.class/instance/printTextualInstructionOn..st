printing
printTextualInstructionOn: aStream
	aStream
		<< 'split ';
		<< self instructionIndex1;
		<< ', ';
		<< self instructionIndex2