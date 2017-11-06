shifting
shiftIndexPointing2To1
	self instructionIndex1 = 2
		ifTrue: [ self instructionIndex1: 1 ].
		
	self instructionIndex2 = 2
		ifTrue: [ self instructionIndex2: 1 ]