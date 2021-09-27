###############################################
# FILE: edu4.pat
# SUBJ: Find education location in school.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 23:23:41
# MODIFIED:
# NOTE:	Miscellaneous education zone stuff.
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE _school

# If city or state found within a school, prefer that.
# OVERWRITES city,state from elsewhere in education instance, if present.
@POST
  X("city",3) = N("$text");
@RULES
_xNIL <- _city [s] @@

@POST
  X("state",3) = N("$text");
@RULES
_xNIL <- _state [s] @@

# If some phrase is carrying a state, use it.
@CHECK
  if (N("state") && !X("state",3))
	succeed();
  fail();
@POST
  X("state",3) = N("state");
@RULES
_xNIL <- _Caps @@

