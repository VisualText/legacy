###############################################
# FILE: pr_laddr.pat
# SUBJ: comment here
# CREATED: 23/Sep/99 13:37:03
###############################################

@CODE

fileout("addr.txt");
prlit("addr.txt","\n");
prlit("addr.txt","LINE ADDRESSPARTS\n");
prlit("addr.txt","-----------------\n");

@@CODE

@PATH _ROOT

# Print out the total count of vars in each line.
@POST
	prlit("addr.txt", "line count=");
	# fprintnvar("addr.txt", "addressParts", 1);
	"addr.txt" << N("addressParts",1);
	prlit("addr.txt", "\n");
@RULES

_xNIL <- _LINE @@

