###############################################
# FILE: SchoolName25.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 17:57:42
###############################################

@NODES _LINE

@RULES

_CompleteSchoolName [] <-
	The
	_xWHITE	[star s]
	_SchoolNamePhrase 		
	@@
