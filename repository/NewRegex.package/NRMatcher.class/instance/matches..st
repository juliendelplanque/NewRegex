matching
matches: aString
	"Match against a string. Return true if the complete String matches."

	^self matchesStream: aString readStream