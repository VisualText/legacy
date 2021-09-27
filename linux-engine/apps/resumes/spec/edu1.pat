###############################################
# FILE: edu1.pat
# SUBJ: Traverse and fill education instance from line stuff.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 13:22:47
# MODIFIED:
# NOTE:	Not using proximity methods yet.  Seeing how
#		simple,stupid works first.
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE

@POST
  X("school",3) = N("$text");		# Fill instance with school name.
@RULES
_xNIL <- _xWILD [s one matches=(_school _schoolPhrase _SchoolName)] @@

@POST
  X("date",3) = N("$text");		# Fill instance with date.
@RULES
_xNIL <- _DateRange [s] @@
_xNIL <- _SingleDate [s] @@

@POST
# (RUG hierarchy guys don't layer semantics yet.)
# This is a bit hacky, eg, for "MBA".
if (N("degree"))
  X("degree",3) = N("degree");
else
  X("degree",3) = N("$text");
if (N("major"))
  X("major",3)  = N("major");
else
  X("major",3)  = N("$text");
@RULES
_xNIL <- _degreeInMajor [s] @@
#_xNIL <- _degree [s] @@

@POST
if (!X("city",3))
  X("city",3) = N("$text");
# noop()
@RULES
_xNIL <- _city [s] @@

@POST
if (!X("state",3))
  X("state",3) = N("$text");
# noop()
@RULES
_xNIL <- _state [s] @@


@POST
if (!X("minor",3))
  X("minor",3) = N("$text");
# noop()
@RULES
_xNIL <- _minor [s] @@

