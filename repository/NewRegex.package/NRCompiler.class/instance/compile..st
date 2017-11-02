compiling
compile: aString
	| reversePolish stack |
	reversePolish := NRToReversePolishNotationParser parse: aString.
	stack := Stack new.
	reversePolish do: [ :item |
		stack push: (item evaluateOnStack: stack) ].
	^ NRCompiledRegularExpression new
		instructions: stack pop , { NRMatchInstruction new };
		yourself