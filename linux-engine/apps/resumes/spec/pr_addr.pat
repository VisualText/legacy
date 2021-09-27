###############################################
# FILE: pr_addr.pat
# SUBJ: comment here
# CREATED: 23/Sep/99 13:21:44
###############################################

@CODE

# Created in pr_laddr.txt
#fileout("addr.txt");
prlit("addr.txt","\n");
prlit("addr.txt","ZONE ADDRESSPARTS\n");
prlit("addr.txt","-----------------\n");

@@CODE

# @NODES _ROOT		# 10/19/99 AM.
@PATH _ROOT			# 10/19/99 AM.

# Print out the total count of vars in each line.
@POST
	prlit("addr.txt", "zone count=");
	# fprintnvar("addr.txt", "addressParts", 1);
	"addr.txt" << N("addressParts",1);
	prlit("addr.txt", "\n");
@RULES

_xNIL <- _xANY @@
