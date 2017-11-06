matching
searchStream: aStream
	"Search the stream for occurrence of something matching myself.
	After the search has occurred, stop positioned after the end of the
	matched substring. Answer a Boolean indicating success."
	
	"First optimisation, if the regex has a common first character
	for all its branches, search for it on the stream before trying
	to try to match it."
	self compiledRegularExpression hasFirstCharacter
		ifTrue: [ 
			[
				aStream
					skipTo: self compiledRegularExpression firstCharacter;
					back.
				(self matchesPrefix: aStream) ifTrue: [ ^ true ]
			] doWhileFalse: [ aStream atEnd ].
			^ false ].
	
	"If no optimisation is possible, use the regular expression with
	'.*' concatenated as prefix."
	^ matcherForSearch matchesStreamPrefix: aStream