###############################################
# FILE: g_url.pat
# SUBJ: More generic than automatically generated URL rules.
# CREATED: 23/Sep/99 10:22:39
###############################################

@NODES _LINE

@POST
	singler(1,5);	# Reduce all but the trailing whitespace.
@RULES

_url <-
	_xALPHA	[layer=(_protocol)]
	\:	[s trigger]
	\/	[s]
	\/	[s]
	_xWILD [plus fails=(\, _xWHITE _whtSEP \[ \])]
	_xWILD [opt s match=(_xWHITE _whtSEP)]
	@@


