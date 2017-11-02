grammar-characters
characterSetClass
	^ '[:' asParser , #word asParser star flatten , ':]' asParser