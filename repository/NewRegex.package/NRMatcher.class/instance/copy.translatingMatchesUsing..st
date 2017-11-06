match enumeration
copy: aString translatingMatchesUsing: aBlock
	"Copy <aString>, except for the matches. For each match, evaluate <aBlock> passing the matched substring as the argument.  Expect the block to answer a String, and replace the match with the answer."
	^ String streamContents: [ :writeStream |
		self copyStream: aString readStream to: writeStream translatingMatchesUsing: aBlock ]