interpreting
executeAllCurrentThreads
	[ currentList isEmpty ] whileFalse: [ 
		currentThread := currentList removeFirst.
			(compiledRegularExpression instructionAt: currentThread programCounter)
					beExecutedBy: self on: inputStream ].