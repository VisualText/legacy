###############################################
# FILE: exp_anchors.pat
# SUBJ: Find anchors for experience instances.
# AUTH: Amnon Meyers
# CREATED: 19/Nov/99 15:20:29
# MODIFIED:
# NOTE:	For now, anchors will be DateRange.
###############################################

@CODE
fileout("exp_anchors.txt");	# 06/10/00 AM.
@@CODE

# Look for an anchor in each line of experience zone.
# Would like a way to refer to vars in the experience zone of:
@PATH _ROOT _experienceZone _LINE
# eg, X("var", 2) refers to var in 2nd component of path.
# opt! Can reverse the list and change the numbers accordingly,
# internally.  Or make it an array, better yet.

# For each anchor, mark that its line contains an anchor.
@POST
  ++X("nanchors");
  # Would like to layer _ANCHOR onto context node here!
  # (Could use xrename as temporary rename. 01/01/00 AM.)
  if (!X("first anchor",2))	# Track first anchor lineno.
	{
	X("first anchor",2) = X("lineno");	# 01/01/00 AM.
	if (X("lineno") > 1)	# More than just a header before.
	   X("noprestuff",2) = 0; # There are lines before anchors.
	else
	   X("noprestuff",2) = 1;
	}
  "exp_anchors.txt" << "------------------------" << "\n";
  xdump("exp_anchors.txt",2);
  "exp_anchors.txt" << "---------" << "\n";
  ndump("exp_anchors.txt",1);
  # noop()
@RULES
_xNIL <- _DateRange [s] @@
_xNIL <- _SingleDate [s] @@	# Trying out.	# 01/01/00 AM.

