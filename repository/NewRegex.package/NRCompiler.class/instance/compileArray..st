private - compiling
compileArray: reversePolishNotationArray
	stack := Stack new.
	parenthesesIndex := 0.
	reversePolishNotationArray , { NRSubmatchOperator new } do: [ :item |
		stack push: (item beEvaluatedBy: self) ].
	
	^ NRCompiledRegularExpression new
		instructions: stack pop , { NRMatchInstruction new };
		yourself