###############################################
# FILE: weak0.pat
# SUBJ: Identify unlikely header lines
# AUTH: Amnon Meyers
# CREATED: 11/Jan/00 23:01:14
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@POST
   if (++X("cap phrases") > 1)
	{
	if (X("hi class") == "header" && N("hi class") == "header")
	   X("hi conf") = X("hi conf") %% N("hi conf");
	else	# Don't know what to make of this line.
	   {
	   X("hi class") = "NULL";
	   X("hi conf") = 0;
	   }
	}
   else
	{
	X("hi class") = N("hi class");
	X("hi conf") = N("hi conf");
	}
@RULES
_xNIL <- _Caps @@

