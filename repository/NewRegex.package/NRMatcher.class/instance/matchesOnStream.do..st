match enumeration
matchesOnStream: aStream do: aBlock
	"Be extra careful about successful matches which consume no input.
	After those, make sure to advance or finish if already at end."
	self halt: 'TODO'