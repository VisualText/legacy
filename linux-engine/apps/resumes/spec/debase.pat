###############################################
# FILE: debase.pat
# SUBJ: Turn off base flag of Caps.
# AUTH: Amnon Meyers
# CREATED: 12/Dec/99 17:37:57
# MODIFIED:
# NOTE:	This lets rules "look inside" a singleton caps phrase.
#		(i.e., a phrase of one node).
###############################################

@NODES _LINE

@POST
	setbase(1,"false");
@RULES

_xNIL <- _Caps @@

