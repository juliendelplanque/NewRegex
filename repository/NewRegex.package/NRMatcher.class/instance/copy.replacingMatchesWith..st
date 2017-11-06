match enumeration
copy: aString replacingMatchesWith: replacementString
	"Copy <aString>, except for the matches. Replace each match with <aString>."
	
	^ String streamContents: [ :writeStream |
		self copyStream: aString readStream to: writeStream replacingMatchesWith: replacementString. ]