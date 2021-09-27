###############################################
# FILE: x_wht2.pat
# SUBJ: comment here
# AUTH: AM
# CREATED: 01/Dec/99 22:20:56
# MODIFIED:
###############################################

@NODES _LINE _humanNameCandidate

# Zap all matched nodes in parse tree.
@POST
	excise(1,1);

@RULES
# Retaining these for now.	# 12/01/99 AM.
_xNIL <- _xWILD [one match=(_whtINDENT _whtSEP)] @@
