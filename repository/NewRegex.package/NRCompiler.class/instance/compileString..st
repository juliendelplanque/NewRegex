compiling
compileString: aString
	| reversePolish |
	reversePolish := NRToReversePolishNotationParser parse: aString.
	^ self compileArray: reversePolish