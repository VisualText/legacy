###############################################
# FILE: SchoolFinal.pat
# SUBJ: comment here
# CREATED: 11/Oct/99 14:13:58
###############################################

@NODES _LINE

@RULES

_CompleteSchoolName <- 
	_CompleteSchoolName [s] _xWHITE [s]	
	_xWILD [s one matches = ( and And \& )] _xWHITE [s]
	_xWILD [s one matches = ( _CompleteSchoolName _SchoolRoot _SchoolNamePhrase)]
@@


_CompleteSchoolName <- 
	_CompleteSchoolName [s] _xWHITE [s]
	_xWILD [s one matches = ( _CompleteSchoolName _SchoolRoot _SchoolNamePhrase)]
@@

_CompleteSchoolName <- _SchoolNamePhrase [s] @@
