accessing
number
	^ #digit asParser plus ==> [ :tokens | (String newFrom: tokens) asNumber ]