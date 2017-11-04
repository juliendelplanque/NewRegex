interpreting
interpret: aNRCompiledRegularExpression on: aStream
	currentList := LinkedList new.
	nextList := LinkedList new.
	inputStream := aStream.
	compiledRegularExpression := aNRCompiledRegularExpression.
	
	currentList addLast: (NRThread new
									programCounter: 1;
									yourself). 
	[ inputStream atEnd ] whileFalse: [
		self executeAllCurrentThreads.
		inputStream next.
		currentList := nextList.
		nextList := LinkedList new ].

	currentList ifNotEmpty: [
		self executeAllCurrentThreads ]