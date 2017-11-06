utilties
compileRegex: aString
	"Compile the regex and answer the matcher, or answer nil if compilation fails."

	^ [ NRMatcher fromString: aString ] on: Error do: [ nil ]