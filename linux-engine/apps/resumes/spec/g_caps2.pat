###############################################
# FILE: g_caps2.pat
# SUBJ: Glom caps with things like "and".
# AUTH: Amnon Meyers
# CREATED: 21/Dec/99 12:29:43
# MODIFIED:
# NOTE:	RECURSIVE PASS.
#		Need to handle the blocked singletons.
#			_xCAP and _xCAP ....
#	Neglecting Cap comma Cap for now also.  Want to get lists,
#	but that's about it (other than special knowledge.)
###############################################

@PATH _ROOT _LINE

@CHECK
 if (
   (N("hi class",1) == N("hi class",5))
&& ((N("hi conf",1) >= G("threshold"))
|| (N("hi conf",5) >= G("threshold")))
    )
    succeed();
 fail();
@POST
   # Want a merge variant that keeps everything as is between the
   # two nodes.  Could add a boolean to it.
   S("hi class") = N("hi class",1);
   S("hi conf") = N("hi conf",1) %% N("hi conf",5);	# Combine conf!

   # Combine the count variables.
   S("fields") = N("fields",1) + N("fields",5);
   # and so on.....need a compose() action to do all this!
   S("company conf") = N("company conf",1) %% N("company conf",5);
   S("job conf") = N("job conf",1) %% N("job conf",5);
   S("field conf") = N("field conf",1) %% N("field conf",5);
   S("humanname conf") = N("humanname conf",1) %% N("humanname conf",5);
   
   merge();
@RULES

_Caps [unsealed] <- 
	_Caps
	_xWHITE [s star]
	_xWILD [s one match=( and \/ \& )]
	_xWHITE [s star]
	_Caps
	@@

# If there's a clash in types, there are several cases.
# Parens because we've glommed the of stuff first, rightfully or not.
# A and (B of C)
# (A of B) and C
# (A of B) and (C of D)
@CHECK
 if (
  N("capofcap",1) || N("capofcap",5)
    )
    succeed();
 fail();
@POST
# Let the left side dominate.  Copy everything.
  S("capandcap") = 1;	# Flag what this is.	# 12/30/99 AM.

  # Should transfer from 1st caps (dominant) to new list.
  S("hi class") = N("hi class",1);
  S("hi conf") = N("hi conf",1);
  S("ambigs")  = N("ambigs");
  # etc.

  S("humanname conf") = N("humanname conf",1);
  S("company conf") = N("company conf",1);
  S("field conf") = N("field conf",1);
  S("job conf") = N("job conf",1);
  S("school conf") = N("school conf",1);
  single();
@RULES

_Caps [unsealed] <- 
	_Caps
	_xWHITE [s star]
	_xWILD [s one match=( and )]
	_xWHITE [s star]
	_Caps
	@@

# A and B
# If B is solid, use it.
@POST
  S("capandcap") = 1;	# Flag what this is.	# 12/30/99 AM.
  if (N("hi conf",1) > N("hi conf",5))
	{

  # Should transfer from 1st caps (dominant) to new list.
  S("hi class") = N("hi class",1);
  S("hi conf") = N("hi conf",1);
  S("ambigs")  = N("ambigs");
  # etc.

  S("humanname conf") = N("humanname conf",1);
  S("company conf") = N("company conf",1);
  S("field conf") = N("field conf",1);
  S("job conf") = N("job conf",1);
  S("school conf") = N("school conf",1);
	}
  else
	{
  S("hi class") = N("hi class",5);
  S("hi conf") = N("hi conf",5);
  S("ambigs")  = N("ambigs");
  # etc.

  S("humanname conf") = N("humanname conf",5);
  S("company conf") = N("company conf",5);
  S("field conf") = N("field conf",5);
  S("job conf") = N("job conf",5);
  S("school conf") = N("school conf",5);
	}
  single();
@RULES
_Caps [unsealed] <- 
	_Caps
	_xWHITE [s star]
	_xWILD [s one match=( and )]
	_xWHITE [s star]
	_Caps
	@@
