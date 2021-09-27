###############################################
# FILE: un_exp2.pat
# SUBJ: Zap the anchor layer from experience zone.
# AUTH: AM
# CREATED: 25/Nov/99 05:44:58
# MODIFIED:
# NOTE:	Could also get rid of line nodes and regroup the
#		capitalized phrases in passes beyond the current pass.
###############################################

@PATH _ROOT _experienceZone _experienceInstance

@POST
# Before zapping anchor, copy its line number to instance.
	X("anchor lineno") = N("lineno",1);
	splice(1,1);		# Zap the _expStart node
@RULES

_xNIL <- _ANCHOR @@
