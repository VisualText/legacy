###############################################
# FILE: exp_anchors2.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 22/Nov/99 09:12:48
# MODIFIED:
###############################################

@CODE
fileout("exp_anchors2.txt");	# 06/10/00 AM.
@@CODE

@PATH _ROOT _experienceZone

@POST
	# Tell each anchor about its next anchor.
	N("next anchor",1) = N("lineno",3);
	ndump("exp_anchors2.txt",1);
	# noop()
@RULES
_xNIL <-
	_ANCHOR [s]
	_xWILD [s star]		# Lines and stuff.
	_ANCHOR [s lookahead]	# IMPLEMENTING LOOKAHEAD. 11/21/99 AM.
	@@

