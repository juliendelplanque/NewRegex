printing
printTextualInstructionOn: aStream
	aStream
		<< 'vm '.
	self selector printOn: aStream