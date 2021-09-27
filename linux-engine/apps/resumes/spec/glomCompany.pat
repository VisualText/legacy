###############################################
# FILE: glomCompany.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 13/Jan/00 16:38:36
# MODIFIED:
###############################################

@NODES _LINE

@RULES

_company <- 
		_xWILD [s opt one matches = ( 
		  _companyPhrase _companyMod _companyModRoot) ]
		_xWHITE [s]
		_xWILD [s one matches = ( 
		  _companyPhrase _companyMod _companyModRoot) ]
		\, [s opt]
		_xWHITE [s]
		_companyRoot [s] @@

_company <- _companyPhrase [s] @@
	