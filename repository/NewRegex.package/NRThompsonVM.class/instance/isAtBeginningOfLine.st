testing - instructions
isAtBeginningOfLine
	^ self stringCounter = 0
		or: [ ({ Character cr . Character lf } includes: self inputStream peekBack)
			or: [ 
				self inputStream position >= 2
					ifTrue: [
						|last lastLast|
						last := self inputStream back.
						lastLast := self inputStream back.
						self inputStream skip: 2.
						last = Character lf and: [ lastLast = Character cr ] ]
					ifFalse: [ false ] ] ]