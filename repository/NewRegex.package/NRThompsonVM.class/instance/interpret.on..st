interpreting
interpret: aNRCompiledRegularExpression on: aStream
	currentList := self threadListClass new.
	nextList := self threadListClass new.
	inputStream := aStream.
	beginStreamPosition := aStream position.
	compiledRegularExpression := aNRCompiledRegularExpression.
	subexpressionsIndexes := Array streamContents: [ :s | 
		compiledRegularExpression subexpressionsCount * 2
			timesRepeat: [ s nextPut: OrderedCollection new ] ].
	
	currentList addLast: (NRThread new
									programCounter: 1;
									yourself). 
	[ inputStream atEnd ] whileFalse: [
		currentList ifEmpty: [ ^ self ]. "No need to continue if no more thread."
		self executeAllCurrentThreads.
		inputStream next.
		currentList := nextList.
		nextList := self threadListClass new ].
	
	currentList ifNotEmpty: [
		self executeAllCurrentThreads ]