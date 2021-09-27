###############################################
# FILE: zone_heur.pat
# SUBJ: comment here
# CREATED: 23/Sep/99 13:49:05
###############################################

@CODE
fileout("ctc.txt");
@@CODE

# For otherZone at the beginning of a resume, if it has
# noteworthy addressParts, rename it to contactZone.
# NOTE: A temporary heuristic.  If experience zone is next, it may
# well have cityState constructs.  Need to decide what the next zone
# really is, once we start dealing with things beyond contact zones.
# @NODES _ROOT	# 10/19/99 AM.
@PATH _ROOT		# 10/19/99 AM.

@CHECK
  if (N("addressParts",2) < 2) fail();			# 12/25/99 AM.
#	Nge(2, "addressParts", 2)		# 12/25/99 AM.
@POST
	noop();
@RULES

_xNIL <-
	_contactZone [s]
	_otherZone [s ren=(_contactZone)]
	@@
