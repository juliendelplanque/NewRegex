gt extension
gtInspectorRegularExpressionIn: composite
	<gtInspectorPresentationOrder: 0> 
	^ composite text
		title: 'Regular Expression';
		display: [ self regularExpression ifNil: [ '' ] ]