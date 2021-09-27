###############################################
# FILE: un_exp1.pat
# SUBJ: Zap the experience start layer.
# AUTH: AM
# CREATED: 25/Nov/99 05:30:18
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance

@POST
	splice(1,1);		# Zap the _expStart node
@RULES

_xNIL <- _expStart @@
