###############################################
# FILE: SchoolName4.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 17:16:59
###############################################
@NODES _LINE

@RULES
_CompleteSchoolName <- _university @@

@POST
	singler(3,3)
@RULES
_CompleteSchoolName [base] <-
	The [s]
	_xWHITE [s star]
	_SchoolNamePhrase [t]
	@@
_CompleteSchoolName [base] <-
	_xSTART
	_xWHITE [s star]
	_SchoolNamePhrase [t]
	@@

@RULES
_CompleteSchoolName [base] <-
	_PostalState [s]
	_xWHITE [s]
	_SchoolNamePhrase [t]
	@@
_CompleteSchoolName [base] <-
	_SchoolNamePhrase [s]
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_CityName [s]
	@@
