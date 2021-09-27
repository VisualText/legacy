###############################################
# FILE: edu_subzone4.pat
# SUBJ: Segment the education zone into instances.
# AUTH: Amnon Meyers
# CREATED: 16/Nov/99 12:27:38
# MODIFIED:
###############################################

@PATH _ROOT _educationZone

@RULES
_educationInstance <-
	_xWILD [s one match=( _xSTART _educationBoundary )]
	_xWILD [s star match=(_LINE _BLANKLINE) except=(_eduStart)]
	@@

_educationInstance <-
	_eduStart [s]
	_xWILD [s star match=(_LINE _BLANKLINE) except=(_eduStart)]
	@@
