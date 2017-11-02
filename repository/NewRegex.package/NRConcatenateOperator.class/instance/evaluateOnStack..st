evaluating
evaluateOnStack: aStack
	| popped1 popped2 |
	popped2 := aStack pop.
	popped1 := aStack pop.
	self shift: popped2 indexesOf: popped1 size.

	^ popped1 , popped2