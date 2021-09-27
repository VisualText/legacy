###############################################
# FILE: caps1.pat
# SUBJ: Characterizing capitalized phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Nov/99 00:04:57
# MODIFIED:
###############################################

# Look only at cap phrases within lines within experience zones.
@PATH _ROOT _experienceZone _LINE _Caps

# Job title root word (eg, "programmer") at the end of phrase
# gets a bonus.
@POST
  ++X("jobtitleroots");	 	# Bump in _Caps context node.
  if (N("$end"))			# If last node in caps phrase.
    ++X("end jobtitleroot");	# Bonus. Last word in cap phrase.
  # noop()	# Implicit.
@RULES
_xNIL <- _jobTitleRoot [s] @@

@POST
  ++X("companyroots");
  if (N("$end"))
    ++X("end companyroot");
@RULES
_xNIL <- _companyRoot [s] @@

# Handling schools separately.	# 12/22/99 AM.
# _xNIL <- _CompleteSchoolName [s] @@


@POST
  ++X("companymodroots");
  if (N("$end"))
    ++X("end companymodroot");
@RULES
_xNIL <- _companyModroot [s] @@

@POST
  ++X("companymods");
@RULES
_xNIL <- _companyMod [s] @@


