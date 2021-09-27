###############################################
# FILE: courseAndcourse.pat
# SUBJ: conjoin course work
# CREATED: 14/Oct/99 22:49:14
###############################################

@NODES _LINE
@RULES

# ex. Linguistics and Philosophy
_major [] <- 	_major 	[s]
		_xWHITE 	[s]
		_xWILD 	[s one matches = ( and \& ) ]
		_xWHITE 	[s]
		_major	[s]
		@@

# ex. Linguistics, Philosophy
_major [] <- 	_major 	[s]
		_xWILD 	[s one matches = ( \,) ]
		_xWHITE 	[s]
		_major	[s]
		@@
# ex. Linguistics, Philosophy, Computer Science
_major [] <- 	_major 	[s]
		_xWILD 	[s one matches = ( \,) ]
		_xWHITE 	[s]
		_xWILD 	[s one matches = ( \,) ]
		_xWHITE 	[s]
		_major	[s]
		@@