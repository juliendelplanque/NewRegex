matching
matchesPrefix: aString
	"Match against a string. Return true if a prefix matches."

	^self matchesStreamPrefix: aString readStream