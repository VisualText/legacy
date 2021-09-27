###############################################
# FILE: exp3.pat
# SUBJ: Lower conf heuristics
# AUTH: Amnon Meyers
# CREATED: 29/Dec/99 20:29:37
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE

# If date range wasn't picked up, try single date.	# 01/01/00 AM.
@CHECK
  if (X("date range",3)) fail();
@POST
X("date range",3) = N("$text",1);
@RULES
_xNIL <- _SingleDate [s] @@

# If city state hasn't been picked up yet and there's a cap turd,
# pick it up.
@CHECK
 if (
  !X("city",3) && !X("state",3)
&& !N("capofcap",1) && !N("capandcap",1)
&& N("len",1) <= 2
    )
    succeed();
 fail();
@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  X("city",3) = N("$text",1);
  X("state",3) = N("$text",4);
  single();
@RULES
_cityState <-
	_Caps [s rename=(_city) layer=(_cityName)]
	\, [s]
	_xWHITE [s star]
	_state [s layer=(_stateName)]
	@@


# If company name not found in instance, take a closer look around.
# Pick up unhandled crud on the anchor line!!
@CHECK
 if (
   !X("company name",3)
&& (X("lineno") == X("anchor lineno",3))
&& (N("company conf") >= 40 ||N("humanname conf") >= 40)
    )
    succeed();
 fail();
@POST
  X("company name",3) = N("$text",1);
@RULES
_xNIL <- _Caps [rename=(_company)] @@

# Company name is more reasonable than human name in experience
# zone's anchor line.
@CHECK
 if (
   !X("company name",3)
&& X("lineno") == X("anchor lineno",3)
    )
    succeed();
 fail();
@POST
   X("company name",3) = N("$text",1);
@RULES
_xNIL <- _humanName [rename=(_company)] @@

# Company name still not found.
# Check one line away from anchor, as last gasp.
@CHECK
 if (
   !X("company name",3)
&&  (N("tmp") = (X("lineno") - X("anchor lineno",3)))
&&  (N("tmp") >= -1 && N("tmp") <= 1) # one line away fm anchor.
&& (N("company conf") >= 40 || N("humanname conf") >= 40)
    )
    succeed();
 fail();
@POST
  X("company name",3) = N("$text",1);
@RULES
_xNIL <- _Caps [rename=(_company)] @@

