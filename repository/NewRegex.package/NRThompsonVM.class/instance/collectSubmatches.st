private
collectSubmatches
	| streamPositionToRestore submatches submatchIndex |
	streamPositionToRestore := inputStream position.
	submatches := Array streamContents: [ :s | 
		(subexpressionsIndexes size / 2) timesRepeat: [ s nextPut: OrderedCollection new ] ].
	submatchIndex := 1.
	subexpressionsIndexes pairsDo: [ :beginIndexes :endIndexes |
		|i j|
		i := 1.
		j := 1.
		[ i = (beginIndexes size + 1) or: [ i = beginIndexes size and: [ j = (endIndexes size + 1) ] ] ]
			whileFalse: [ 
				inputStream position: (beginIndexes at: i) + beginStreamPosition.
				(submatches at: submatchIndex) add: (inputStream next: (endIndexes at: j) - (beginIndexes at: i)).
				j := j + 1.
				i < beginIndexes size
					ifTrue: [ i := i + 1 ] ].
		submatchIndex := submatchIndex + 1 ].
		
	inputStream position: streamPositionToRestore.
	^ submatches