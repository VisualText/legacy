###############################################
# FILE: exp_anchors1.pat
# SUBJ: Experience zone anchors.
# AUTH: Amnon Meyers
# CREATED: 19/Nov/99 16:03:24
# MODIFIED:
# NOTE:	Convoluted algorithms because not handling a
#		List of values in a variable, within NLP++.
#		Need lookahead to do even the convoluted stuff!
###############################################

@CODE
fileout("exp_anchors1.txt");	# 06/10/00 AM.
@@CODE

@PATH _ROOT _experienceZone

@CHECK
	#Ngt(1, "nanchors", 0)	# If it's an anchor line.
	if (N("nanchors",1) <= 0) fail();
@POST
	"exp_anchors1.txt" << "-------------------" << "\n";
	ndump("exp_anchors1.txt",1);
	# Transfer data up to anchor!
	S("lineno") = N("lineno", 1);
	single();
@RULES
_ANCHOR <- _LINE [s] @@
