###############################################
# FILE: stopschool3.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 18:08:30
###############################################

@NODES _LINE

@POST
    singler(3,3)
@RULES

_CompleteSchoolName [sealed] <-
	_xWILD [s one match=( _xSTART The _xPUNCT)]
	_xWHITE	[star s]
	_SchoolNamePhrase [s t]		
	@@

@RULES
# Adding this to finish the job.
_CompleteSchoolName [sealed] <- _SchoolNamePhrase [s] @@

