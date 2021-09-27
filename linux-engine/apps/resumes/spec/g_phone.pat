###############################################
# FILE: g_phone.pat
# SUBJ: Hand-built phone handler.
# CREATED: 20/Sep/99 12:14:00
###############################################

@NODES _LINE

@PRE

<1,1>	cap();
@RULES

_phoneWorkPhrase [] <-
	_xWILD	[min=1 max=1 s layer=(_Work) match=(Office W Work)]
	\:	[s]
	_xWHITE	[star s]
	_phoneNumber	[s]
	@@

