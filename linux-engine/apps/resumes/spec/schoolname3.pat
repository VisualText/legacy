###############################################
# FILE: SchoolName3.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 14:59:07
###############################################

@NODES _LINE

@POST
	singler(3,3)
@RULES
_CompleteSchoolName [base sealed] <-
	_xWILD [s one match=( _xSTART The _xPUNCT )]
	_xWHITE	[star s]
	_SchoolNamePhrase [t]		
	@@

@RULES
# Joe (SchoolNamePhrase University) -> ModSchoolPhrase(Joe University)
_SchoolNamePhrase [base] <- 
	_xWILD     [one s fails=( _xPUNCT _xWHITE _whtSEP _xNUM
		_degree _major _minor _gpa )]
	\- [s]
	_xALPHA [s]	
	_xWHITE	[one s]		# 10/07/99 AM.
	_SchoolNamePhrase [t]
	@@

_SchoolNamePhrase [base sealed] <- 
	_xWILD     [one s fails=( _xPUNCT _xWHITE _whtSEP _xNUM
		_degree _major _minor _gpa )]
	_xWHITE	[one s]		# 10/07/99 AM.
	_SchoolNamePhrase [t]
	@@
