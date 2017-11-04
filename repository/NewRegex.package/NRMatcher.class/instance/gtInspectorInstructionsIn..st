gt extension
gtInspectorInstructionsIn: composite
	<gtInspectorPresentationOrder: 1> 
	^ self compiledRegularExpression
		ifNotNil: [ :compiled | compiled gtInspectorInstructionsIn: composite ]
		ifNil: [ 
			composite table
				title: 'Instructions';
				display: [ #() ] ]