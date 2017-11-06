private
shift: instructions indexesOf: anInteger
	instructions do: [ :instruction | instruction shiftIndexesOf: anInteger ]