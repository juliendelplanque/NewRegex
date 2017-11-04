gt extension
gtInspectorInstructionsIn: composite
	<gtInspectorPresentationOrder: 0> 
	^ composite fastTable
		title: 'Instructions';
		display: [ self instructions ];
		column: 'Index' evaluated: [ :value :idex | (self instructions indexOf: value) asString ] width: 50;
		column: 'Instruction' evaluated: [ :each | each textualInstruction ];
		yourself