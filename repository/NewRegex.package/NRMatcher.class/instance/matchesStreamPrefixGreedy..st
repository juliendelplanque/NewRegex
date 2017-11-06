matching
matchesStreamPrefixGreedy: aStream
	"Match myself against a positionable stream.
	Greedy version, consume as much input on the stream as possible."
	| vm lastMatchPosition |
	vm := self virtualMachineClass new.
	lastMatchPosition := nil.
	[
		vm
			interpret: self compiledRegularExpression on: aStream
	] on: NRMatchNotification do: [ :notification |
		lastMatchPosition := aStream position.
		vm canContinue
			ifFalse: [ ^ true ].
		notification resume ].

	lastMatchPosition
		ifNil: [ ^ false ].
	
	aStream position: lastMatchPosition.
	^ true