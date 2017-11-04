testing - instructions
isAnyCharacter
	^ self inputStream peek isNotNil and: [ self inputStream peek ~= Character null ]