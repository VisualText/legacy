###############################################
# FILE: name_xfer.pat
# SUBJ: Transfer of name information
# CREATED: 10/02/99 AM.
# NOTE:	01/01/99 AM. Probably not used for much these days.
###############################################

# Transfer confidence information from human candidate node to
# a human name that was found inside it.
@NODES _ROOT _contactZone _LINE _humanNameCandidate

@CHECK
	if (X("ResumeOf") <= 0) fail();
@POST
	N("ResumeOf") = X("ResumeOf");	# 12/25/99 AM.
#	ninc(1, "ResumeOf")
	noop();
@RULES

_xNIL <-
	_humanName [s]
	@@
