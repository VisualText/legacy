###############################################
# FILE: caps2.pat
# SUBJ: Characterize cap phrases
# AUTH: Amnon Meyers
# CREATED: 18/Nov/99 15:28:49
# MODIFIED:
# NOTE: In general, capitalized phrase will have interstitial
#	words like "of", so counting the number of cap words.
###############################################


# Look only at cap phrases within lines within experience zones.
@PATH _ROOT _experienceZone _LINE _Caps

# UNREDUCED UNKNOWN WORDS.	# 12/11/99 AM.
# @PRE
# <1,1> unknown()
@CHECK   # 09/02/01 AM.
  if (spellword(N("$text")))
  	 fail();
@POST
  ++X("caplen");
  ++X("unknowns")
@RULES
_xNIL <- _xCAP @@

# UNREDUCED KNOWN WORDS.	# 12/15/99 AM.
@POST
  ++X("caplen");
  ++X("unreduced");
@RULES
_xNIL <- _xCAP @@

@POST
  ++X("caplen");
  # noop()	# Implicit.
@RULES
_xNIL <- _xCAP [s] @@


