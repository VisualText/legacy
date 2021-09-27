###############################################
# FILE: glom4.pat
# SUBJ: Undone stuff
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 22:52:53
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  single();
@RULES
_cityState <-
	_city [s layer=(_cityName)]
	\, [s]
	_xWHITE [s star]
	_state [s layer=(_stateName)]
	@@

@CHECK
 if (
    N("len",1) <= 2
&& !N("capofcap",1)
&& !N("capandcap",1)
&&
   (N("city conf",1) >= 40 ||
    N("humanname conf",1) >= 40)	# Convert.
   )
	succeed();
 else
	fail();
@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  single();
@RULES
_cityState <-
   _Caps [s rename=(_city) layer=(_cityName)]
   \, [s]
   _xWHITE [s star]
   _state [s layer=(_stateName)]
   @@



