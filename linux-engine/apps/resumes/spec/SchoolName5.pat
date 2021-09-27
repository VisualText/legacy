###############################################
# FILE: SchoolName5.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 17:16:59
###############################################

@NODES _LINE

@POST
	singler(3,3)
@RULES
_CompleteSchoolName [base] <-
	_xWILD [s one match=( _xSTART The at from in _xPUNCT )]
	_xWHITE	[star s]
	_SchoolNamePhrase [t]		
	@@

# Joe (SchoolNamePhrase University) -> ModSchoolPhrase(Joe University)

@PRE
<1,1> cap()
@RULES
  _SchoolNamePhrase [base] <- 
 	_xALPHA     [one s except=(
		_jobTitleRoot		# 11/30/99 AM.
		_degree _degreePhrase _major _minor _gpa
		_DateRange _SingleDate at from in)]	# 10/09/99 PS 	
	_xWHITE	[one s]
	_SchoolNamePhrase [t]
 	@@
