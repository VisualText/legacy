###############################################
# FILE: possessives.pat
# SUBJ: glom possessives
# CREATED: 07/Oct/99 16:15:33
###############################################

# Too general a rule.  # 12/11/99 AM.
@NODES _LINE

@RULES
_possessive <- 
	_xALPHA [s]
	\' [s]
	s  [s]
	@@
