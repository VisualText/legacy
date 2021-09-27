###############################################
# FILE: glom2.pat
# SUBJ: Glom caps separated by things like "and".
# AUTH: Amnon Meyers
# CREATED: 21/Dec/99 12:13:48
# MODIFIED:
###############################################

@PATH _ROOT _LINE

# Need some confidence that the caps is a good one.
# (Could put a weak variant in edu zone, stronger one here.)
@CHECK
  if (!N("fields",3)) fail();	# Has field-of-endeavor words.
@POST
  S("degree") = N("$text",1);
  S("major")  = N("$text",3);
  single();	# Default reduction.
@RULES
_degreeInMajor <-
	_degree [s]
	_xWHITE [s star]
	_Caps [ren=(_major)]
	@@

# 02/08/00 AM. To use this, need to move it to glom1.
# A loose end....
@RULES
_subEntity <-
	_subOrg [s]
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_Caps [ren=(_subEntityname)]
	@@
