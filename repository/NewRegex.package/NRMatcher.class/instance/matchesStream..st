matching
matchesStream: aStream
	"Match thyself against a positionable stream."

	[
		self virtualMachineClass new
			interpret: self compiledRegularExpression on: aStream
	] on: NRMatchNotification do: [ :notification |
		aStream atEnd
			ifTrue: [ ^ true ].
		notification resume ].

	^ false