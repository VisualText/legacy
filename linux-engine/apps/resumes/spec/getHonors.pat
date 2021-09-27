###############################################
# FILE: getHonors.pat
# SUBJ: comment here
# CREATED: 18/Oct/99 21:21:24
###############################################

@NODES _LINE

@RULES

_honors <- 
		graduated 	[s opt]
		_xWHITE 	[s opt]
		with		[s opt]
		_xWHITE 	[s opt]
		_xWILD [s t min=1 max=1 matches=( honors )] @@

_honors <- 	magna 	[s]
		_xWHITE 	[s]
		cum		[s]
		_xWHITE 	[s]
		laude 	[s] @@

_honors <- 	summa 	[s]
		_xWHITE 	[s]
		cum		[s]
		_xWHITE 	[s]
		laude 	[s] @@

_honors <- 	cum		[s]
		_xWHITE 	[s]
		laude 	[s] @@

_honors <- 	dean 		[s]
		\'		[s]
		s		[s]
		_xWHITE 	[s]
		list	[s] @@

_honors <- 	graduate	[s opt]
		_xWHITE 	[s opt]
		fellowship	[s t] @@

_honors <- 	_xWILD [s min=1 max=1 matches=( valedictorian salutatorian )] @@