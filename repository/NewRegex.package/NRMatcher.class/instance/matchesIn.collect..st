match enumeration
matchesIn: aString collect: aBlock
	"Search aString repeatedly for the matches of the receiver.  Evaluate aBlock for each match passing the matched substring as the argument, collect evaluation results in an OrderedCollection, and return in. The following example shows how to use this message to split a string into words."
	"'\w+' asRegex matchesIn: 'Now is the Time' collect: [:each | each asLowercase]"
	self halt: 'TODO'