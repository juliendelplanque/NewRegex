private - compiling
compileArray: reversePolishNotationArray
	stack := Stack new.
	parenthesesIndex := 0.
	reversePolishNotationArray do: [ :item |
		stack push: (item beEvaluatedBy: self) ].
	^ NRCompiledRegularExpression new
		instructions: "{ NRSaveInstruction new slotIndex: 1; yourself } , "
							stack pop ,
						  { "NRSaveInstruction new slotIndex: 2; yourself ."  NRMatchInstruction new };
		yourself