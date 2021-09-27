###############################################
# FILE: glom5.pat
# SUBJ: One of the final cap phrase glomming passes.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 13:13:42
# MODIFIED:
###############################################

@PATH _ROOT _LINE

# If there's a "The" before a cap phrase, add it in.
# Reassess some things accordingly.
# Need a function to find a good runner-up.
# If it's humanname or job title, should trash those assignments.
@PRE
<1,1> cap();
@POST
  if (N("hi class",3) == "humanname"
	|| N("hi class",3) == "job title")
	{
	# Todo: find runner up confidence here.
	N("hi class",3) = "NULL";
	N("hi conf",3) = 0;
	}
  listadd(3,1,"true");
@RULES
_xNIL <- The [s] _xWHITE [s star] _Caps [s] @@


