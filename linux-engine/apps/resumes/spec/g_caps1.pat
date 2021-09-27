###############################################
# FILE: g_caps1.pat
# SUBJ: Glom some caps phrases.
# AUTH: Amnon Meyers
# CREATED: 14/Dec/99 22:27:19
# MODIFIED:
###############################################


@NODES _LINE

# Merge caps.
@POST
  # Not a "glommed" caps, since first is dominant.
  S("capofcap") = 1;	# Flag what this is.	# 12/30/99 AM.

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

# 12/30/99 AM. RETAINING THE INDIVIDUAL SUB-CAPS.
# This will enable reasoning about how to glom lists.
# merge()
  single();
@RULES
_Caps [unsealed] <-
	_Caps
	_xWHITE [s star]
	_posPREP [s]
	_xWHITE [s star]
	the [s opt]
	_xWHITE [s star]
	_Caps [s]
	@@

@POST
  S("capofcap") = 1;	# Flag what this is.	# 12/30/99 AM.

  # Should transfer from 1st caps (dominant) to new list.
  S("hi class") = N("hi class",1);
  S("hi conf") = N("hi conf",1);

  S("humanname conf") = N("humanname conf",1);
  S("company conf") = N("company conf",1);
  S("field conf") = N("field conf",1);
  S("job conf") = N("job conf",1);
  S("school conf") = N("school conf",1);

# 12/30/99 AM. RETAINING THE INDIVIDUAL SUB-CAPS.
# This will enable reasoning about how to glom lists.
# merge()
  single();
@RULES
# Chicken of the Sea.
# District of Columbia.
_Caps [unsealed] <-
	_Caps
	_xWHITE [s star]
	_posPREP [s]
	_xWHITE [s star]
	the [s opt]	# ONLY CARE ABOUT 'the', for now. # 12/22/99 AM.
	_xWHITE [s star]
	_xCAP [s]
	@@

