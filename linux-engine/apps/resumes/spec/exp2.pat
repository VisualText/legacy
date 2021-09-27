###############################################
# FILE: exp2.pat
# SUBJ: Experience instance semantics.
# AUTH: AM
# CREATED: 27/Nov/99 21:29:39
# MODIFIED:
# NOTE:	Need heuristics to decide what a cap phrase is,
#		and whether its confidence is high enough to output.
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE

@CHECK
 if (
   !X("job title",3)
&& (N("job conf tot",1) == X("job conf hi",3)
&&  N("job conf tot",1) >= G("threshold") )
    )
    succeed();
 fail();
@POST
  X("job title",3) = N("$text",1);
@RULES
_xNIL <- _Caps [rename=(_jobTitle)] @@

@CHECK
 if (
   !X("company name",3)
&& (N("company conf tot",1) == X("company conf hi",3)
&&  N("company conf tot",1) >= G("threshold") )
    )
    succeed();
 fail();
@POST
  X("company name",3) = N("$text",1);
@RULES
_xNIL <- _Caps [rename=(_company)] @@


@CHECK
  if (X("date range",3)) fail();
@POST
X("date range",3) = N("$text",1);
@RULES
_xNIL <- _DateRange [s] @@

# Overwrite city and state.
@POST
  if (N("city"))
	X("city",3) = N("city");
  if (N("state"))
	X("state",3) = N("state");
@RULES
_xNIL <- _cityState [s] @@

@CHECK
  if (X("city",3)) fail();
@POST
  X("city",3) = N("$text");
@RULES
_xNIL <- _city [s] @@

@CHECK
  if (X("state",3)) fail();
@POST
  X("state",3) = N("$text");
@RULES
_xNIL <- _state [s] @@

@CHECK
  if (X("country",3)) fail();
@POST
  X("country",3) = N("$text");
@RULES
_xNIL <- _country [s] @@

