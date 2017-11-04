matching
matchesStreamPrefix: aStream
	"Match thyself against a positionable stream."
	[
		self virtualMachineClass new
			interpret: self compiledRegularExpression on: aStream
	] on: NRMatchNotification do: [ ^ true ].

	^ false