###############################################
# FILE: SchoolName4.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 17:16:59
###############################################

@NODES _LINE

@POST
	singler(3,3)
@RULES
_CompleteSchoolName [base] <-
	_xWILD [s one match=( _xSTART The _xPUNCT )]
	_xWHITE	[star s]
	_SchoolNamePhrase [t]		
	@@

# Joe (SchoolNamePhrase University) -> ModSchoolPhrase(Joe University)

@RULES
_SchoolNamePhrase [base] <- 
	_xWILD     [one s fails=( _xPUNCT _xWHITE _xNUM
		_degree _major _minor _gpa 
		_DateRange _SingleDate)]	# 10/09/99 PS	
	_xWHITE	[one s]			# 10/07/99 AM.
	_SchoolNamePhrase [t]
	@@


