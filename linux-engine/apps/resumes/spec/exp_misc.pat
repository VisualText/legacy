###############################################
# FILE: exp_misc.pat
# SUBJ: Some experience zone heuristics.
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 22:35:14
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _LINE

# Looking for unassigned caps.
@CHECK
 if (
    N("len",1) <= 2
&& !N("capofcap",1)
&& !N("capandcap",1)
&&  N("hi conf",1) < 70		# Hasn't been assigned to anything.
    )
    succeed();
 fail();
@POST
   S("city") = N("$text",1);
   S("state") = N("$text",4);
   single();
@RULES
_cityState <-
	_Caps [rename=(_city)]
	\, [s]
	_xWHITE [s star]
	_state [s]
	@@

# eg, "Flibble and Gribble".
@CHECK
 if (
   N("hi conf",1) < G("threshold")
&& N("hi conf",5) < G("threshold")
&& N("unknowns",1)
&& N("unknowns",5)
    )
    succeed();
 fail();
@POST
   merge();
@RULES
_company <-
	_Caps
	_xWHITE [s star]
	_xWILD [s one match=(and \& )]
	_xWHITE [s star]
	_Caps
	@@
