private
findFirstCharacter
	| indexesToCheck |
	indexesToCheck := LinkedList with: 1.
	firstCharacter := nil.
	
	[ indexesToCheck isEmpty ] whileFalse: [ 
		|i inst|
		i := indexesToCheck removeFirst.
		inst := self instructionAt: i.
		inst class = NRCharInstruction
			ifTrue: [ 
				firstCharacter
					ifNil: [ firstCharacter := inst character ]
					ifNotNil: [ 
						firstCharacter = inst character
							ifFalse: [ 
								firstCharacter := nil.
								^ self ] ] ].
		inst class = NRSaveInstruction
			ifTrue: [ indexesToCheck addLast: i + 1 ].
		inst class = NRSplitInstruction
			ifTrue: [ 
				indexesToCheck
					addLast: inst instructionIndex1;
					addLast: inst instructionIndex2 ] ]