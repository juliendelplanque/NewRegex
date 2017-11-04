evaluating
beEvaluatedBy: aNRCompiler
	| popped1 popped2 |
	popped2 := aNRCompiler stack pop.
	popped1 := aNRCompiler stack pop.
	self shift: popped2 indexesOf: popped1 size.

	^ popped1 , popped2