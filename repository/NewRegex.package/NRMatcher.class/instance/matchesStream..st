matching
matchesStream: aStream
	"Match thyself against a positionable stream."
	| vm |
	vm := self virtualMachineClass new.
	[
		vm interpret: self compiledRegularExpression on: aStream
	] on: NRMatchNotification do: [ :notification |
		aStream atEnd
			ifTrue: [ subexpressions := vm collectSubmatches. ^ true ].
		notification resume ].
	
	^ false