###############################################
# FILE: lines1.pat
# SUBJ: Number lines in experience zone!
# AUTH: Amnon Meyers
# CREATED: 19/Nov/99 15:03:54
# MODIFIED:
# NOTE:	To aid in proximity and finding subzones.
###############################################

@CODE
fileout("lines1.txt");		# 06/10/00 AM.
@@CODE

# No way right now to initialize var in the context node.
# Not in the current pass, anyway.
# "nlines" will keep line count in every experience zone.
@PATH _ROOT _experienceZone

# Give each line a line number.
@POST
	++X("nlines");
	N("lineno") = X("nlines");
	# noop()	# Implicit.
	"lines1.txt" << "------------" << "\n";
	ndump("lines1.txt",1);
@RULES

_xNIL <- _LINE [s] @@

