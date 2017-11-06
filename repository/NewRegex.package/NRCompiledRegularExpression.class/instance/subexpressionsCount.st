accessing
subexpressionsCount
	"Returns the number of possible submatches."
	^ (self instructions select: [ :inst | inst class = NRSaveInstruction ]) size / 2