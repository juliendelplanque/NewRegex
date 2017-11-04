printing
printTextualInstructionOn: aStream
	aStream
		<< 'jmp ';
		<< self instructionIndex