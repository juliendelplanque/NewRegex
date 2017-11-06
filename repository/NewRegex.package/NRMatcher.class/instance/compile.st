compiling
compile
	self compiledRegularExpression: (self compile: self regularExpression).
	matcherForSearch := self class new
								compiledRegularExpression: self compiledRegularExpression asCompiledRegularExpressionForSearching;
								yourself.