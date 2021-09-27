###############################################
# FILE: glomFieldNames.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 13/Jan/00 17:20:28
# MODIFIED:
###############################################

@NODES _LINE

@RULES
_field <- 
 	_xWILD [s matches=(_fieldName _field)]
	_xWHITE [s]
 	_xWILD [s matches=(_fieldName _field)]
	_xWHITE [s star]
 	_xWILD [s opt matches=(_fieldName _field)]@@