###############################################
# FILE: countries.pat
# SUBJ: comment here
# CREATED: 07/Oct/99 17:00:06
###############################################

@NODES _LINE

@RULES

_countryName <- 
	_xWILD [s one match=(_countryWord _countryPhrase)]
	@@
