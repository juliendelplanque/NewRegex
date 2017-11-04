printing
printTextualInstructionsOn: aStream
	self instructions do: [ :instruction |
		instruction printTextualInstructionOn: aStream ] separatedBy: [ aStream lf ]