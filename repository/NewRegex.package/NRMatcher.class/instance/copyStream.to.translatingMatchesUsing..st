match enumeration
copyStream: aStream to: writeStream translatingMatchesUsing: aBlock
	"Copy the contents of <aStream> on the <writeStream>, except for the matches. For each match, evaluate <aBlock> passing the matched substring as the argument.  Expect the block to answer a String, and write the answer to <writeStream> in place of the match."
	
	[ aStream atEnd ] whileFalse: [ 
		self searchStream: aStream. ]