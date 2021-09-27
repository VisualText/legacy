###############################################
# FILE: glom1.pat
# SUBJ: Glomming capitalized phrases.
# AUTH: Amnon Meyers
# CREATED: 14/Dec/99 23:12:31
# MODIFIED:
# NOTE:	Some use of knowledge also, for fun.
###############################################

@PATH _ROOT _LINE

# Glomming good school stuff.
@CHECK
 if (
   (N("hi class", 1) == "school")	# Highest class is a school
&& (N("hi conf", 1) >= 80)		# with >= 80% confidence.
    )
    succeed();
 fail();
@POST
   S("hi class") = "school";
   S("hi conf") = N("hi conf",1);
   S("school conf") = N("school conf",1);
   single();
@RULES
_Caps [unsealed] <-
	_Caps
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_Caps [s]
	@@

@CHECK
 if (
   (N("hi class", 3) == "school")	# Highest class is a school
&& (N("hi conf", 3) >= 80)		# with >= 80% confidence.
    )
    succeed();
 fail();
@POST
   S("hi class") = "school";
   S("hi conf") = N("hi conf",1);
   S("school conf") = N("school conf",1);
   single();
@RULES
_Caps <-
	_Caps
	_xWHITE [s star]
	_Caps [s]
	@@

# A "normal" rule.
@POST
   S("hi class") = "school";
   S("hi conf") = 95;
   S("school conf") = 95;
   single();
@RULES
_Caps <-
	_xWILD [s one match=( _SchoolRoot _SchoolType)]
	_xWHITE [s star]
	_xWILD [s one match=(of for)]
	_xWHITE [s star]
	_Caps [s]
	@@
 
# 02/08/00 AM. Moved from glom2 to here.
@POST
	S("degree") = "MD";
	S("major")  = N("$text",5);
	single();	# Default reduction.
@RULES
_degreeInMajor <-
	Doctor [s layer=(_degree)]
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_Caps [ren=(_major)]
	@@

# 02/08/00 AM. Moved from glom2 to here.
@POST
	S("degree") = N("$text",1);
	S("major")  = N("$text",5);
	single();	# Default reduction.
@RULES

_degreeInMajor <-
	_degree [s]
	_xWHITE [s star]
	in [s]
	_xWHITE [s star]
	_Caps [ren=(_major)]
	@@

