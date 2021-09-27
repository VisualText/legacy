###############################################
# FILE: stopschool2.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 18:07:39
###############################################

@NODES _LINE

@RULES

_CompleteSchoolName [] <-
	The
	_xWHITE	[star s]
	_SchoolNamePhrase 		
	@@
