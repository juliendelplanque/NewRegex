grammar
regex
	| exp |
	exp := PPExpressionParser new.

	exp term: atom.

	exp
		group: [ :g | 
			g postfix: $+ asParser do: [ :term :op | { term . NRPlusOperator new } ].
			g postfix: $* asParser do: [ :term :op | { term . NRStarOperator new } ].
			g postfix: $? asParser do: [ :term :op | { term . NROptionalOperator new } ].
			g postfix: ${ asParser , number optional , $, asParser , number optional , $} asParser do: [ :term :rangeTokens | 
				Array streamContents: [ :stream |
					rangeTokens second ifNotNil: [ :n |
						rangeTokens fourth ifNotNil: [ stream << NRConcatenateOperator new ].
						n timesRepeat: [ stream << term ].
						n - 1 timesRepeat: [ stream << NRConcatenateOperator new ] ].
					rangeTokens fourth ifNotNil: [ :m | |n|
						n := rangeTokens second ifNil: [ 0 ].
						m - n timesRepeat: [ stream << term ].
						m - n timesRepeat: [ stream << NROptionalOperator new ] ] ] ] ];
		group: [ :g |
			g left: $| asParser do: [ :term1 :op :term2 | { term1 . term2 . NRBranchOperator new } ] ].
	^ exp plus ==> [ :tokens |
		Array streamContents: [ :stream |
			stream << tokens flattened.
			tokens size - 1 timesRepeat: [ stream << NRConcatenateOperator new ] ] ]