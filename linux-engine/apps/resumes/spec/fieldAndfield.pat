###############################################
# FILE: fieldAndfield.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 30/Jan/00 21:29:13
# MODIFIED:
###############################################

@NODES _LINE

@RULES

# X, Y and Z
_field <- 
	_xWILD [s one matches=(_field _fieldName)]
	\, [s opt]
	_xWHITE [s] 
	_xWILD [s one matches=(_field _fieldName)]
	\, [s opt] 
	_xWHITE [s] 
	and [s] 
	_xWHITE [s] 
	_xWILD [s one matches=(_field _fieldName)] @@ 

# X, Z
_field <- 
	_xWILD [s one matches=(_field _fieldName)]
	\, [s opt]
	_xWHITE [s] 
	_xWILD [s one matches=(_field _fieldName)] @@ 

# Y and Z
_field <- 
	_xWILD [s one matches=(_field _fieldName)]
	_xWHITE [s] 
	and [s] 
	_xWHITE [s star] 
	_xWILD [s one matches=(_field _fieldName)]@@
 