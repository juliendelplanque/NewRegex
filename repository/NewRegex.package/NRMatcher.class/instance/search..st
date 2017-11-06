matching
search: aString
	"Search anywhere in the String for occurrence of something matching myself.
	Answer a Boolean indicating success."

	^self searchStream: aString readStream