###############################################
# FILE: z_job.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 28/Dec/99 19:30:17
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps

# Job title root word (eg, "programmer") at the end of phrase
# gets a bonus.
@POST
  ++X("jobtitleroots");	 	# Bump in _Caps context node.
  if (N("$end"))			# If last node in caps phrase.
    ++X("end jobtitleroot");	# Bonus. Last word in cap phrase.
  # noop()	# Implicit.
@RULES
_xNIL <- _jobTitleRoot [s] @@
_xNIL <- _jobPhrase [s] @@	# 12/26/99 AM.
_xNIL <- _jobTitle [s] @@	# 01/01/00 AM.

@POST
  ++X("jobmods");	 	# Bump in _Caps context node.
  if (N("$end"))			# If last node in caps phrase.
    ++X("end jobmod");	# Bonus. Last word in cap phrase.
  # noop()	# Implicit.
@RULES
_xNIL <- _jobMod [s] @@

