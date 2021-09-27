###############################################
# FILE: un_edu1.pat
# SUBJ: Zap the support stuff for edu subzoning.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 13:58:20
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _educationInstance

@POST
	splice(1,1);		# Zap the _expStart node
@RULES

_xNIL <- _eduStart @@
_xNIL <- _educationBoundary @@
