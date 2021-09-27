###############################################
# FILE: exp_anchors4.pat
# SUBJ: Subzone the experience zone.
# AUTH: AM
# CREATED: 25/Nov/99 05:15:25
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone

@RULES
_experienceInstance <-
	_xWILD [s one match=( _xSTART _experienceBoundary )]
	_xWILD [s star match=(_LINE _BLANKLINE) except=(_expStart)]
	@@

_experienceInstance <-
	_expStart [s]
	_xWILD [s star match=(_LINE _BLANKLINE) except=(_expStart)]
	@@

