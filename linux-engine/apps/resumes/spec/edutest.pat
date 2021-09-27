###############################################
# FILE: edutest.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 30/Jan/00 14:29:37
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE _Caps


#@CHECK
#  !X("degree",3);		# No degree yet. 
#@POST 
#  X("degree",3) = N("$text"); 
#@RULES 
#_xNIL <- _degree [s] @@ 

@CHECK
  if (X("major",3)) fail();		# No major yet.
@POST
  X("major",3) = N("$text");
@RULES
_xNIL <- _field [s] @@