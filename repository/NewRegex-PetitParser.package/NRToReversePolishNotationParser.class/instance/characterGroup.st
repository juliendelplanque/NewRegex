grammar-characters
characterGroup
	^ $[ asParser , $^ asParser optional , $- asParser optional , characterSet star , $- asParser optional , $] asParser