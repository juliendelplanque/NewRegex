testing - instructions
isAtEndOfLine
	^ self inputStream atEnd
		or: [ 
			({Character cr . Character lf} includes: self inputStream peek)
				or: [ |next nextNext|
					next := self inputStream next.
					nextNext := self inputStream next.
					self inputStream skip: -2.
					next = Character cr and: [ nextNext = Character lf ] ] ]