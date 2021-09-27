###############################################
# FILE: glomJobTitleRoots.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 12/Jan/00 22:00:38
# MODIFIED:
###############################################

@NODES _LINE

@RULES

_jobTitle <- _jobTitleRoot [s]
		_xWHITE [s]
	   _jobTitleRoot [s] @@
_jobTitle <- _fieldName [s]
		_xWHITE [s]
	   _jobTitleRoot [s] @@