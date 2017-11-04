instance creation
fromString: aString usingCompiler: aCompilerClass
	^ self new
		regularExpression: aString;
		compilerClass: aCompilerClass;
		compile;
		yourself