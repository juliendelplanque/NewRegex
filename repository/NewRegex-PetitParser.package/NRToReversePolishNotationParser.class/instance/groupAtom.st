atoms
groupAtom
	^ $( asParser , regex , $) asParser ==> [ :tokens | { tokens second ". NRSubmatchOperator new" } ]