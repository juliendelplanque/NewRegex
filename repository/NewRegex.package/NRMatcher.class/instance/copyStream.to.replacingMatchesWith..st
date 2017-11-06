match enumeration
copyStream: aStream to: writeStream replacingMatchesWith: aString
	"Copy the contents of <aStream> on the <writeStream>, except for the matches. Replace each match with <aString>."
	
	self copyStream: aStream to: writeStream translatingMatchesUsing: [ :match | aString ]