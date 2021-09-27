###############################################
# FILE: edu_setup.pat
# SUBJ: Conversions for education zone.
# AUTH: Amnon Meyers
# CREATED: 22/Dec/99 22:53:01
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _LINE


@CHECK
  if (
   (N("hi class") == "school")
&& (N("hi conf")  >= G("threshold"))
     )
     succeed();
  fail();
@POST
  noop();
@RULES
#_school <- _Caps @@	# 12/26/99 AM.
_xNIL <- _Caps [rename=(_school)] @@


@CHECK
  if (
   (N("hi class") == "minor")
&& (N("hi conf")  >= G("threshold"))
     )
     succeed();
  fail();
@RULES
_minor <- _Caps @@

