###############################################
# FILE: pr_exp.pat
# SUBJ: Pretty prints for experience zone.
# AUTH: Amnon Meyers
# CREATED: 22/Nov/99 11:07:17
# MODIFIED:
###############################################

@CODE
fileout("exp.txt");
prlit("exp.txt", "INFO FOR EXPERIENCE ZONE\n");
prlit("exp.txt", "=======================================================\n");
prlit("exp.txt", " LINE NEXT  LINE\n");
prlit("exp.txt", "  NO  ANCH  TEXT\n");
prlit("exp.txt", " ------------------------------------------------------\n");
@@CODE

@PATH _ROOT _experienceZone

@POST
# For fun, fetch text into a variable.
N("text",1) = N("$text",1);		# Special $var fetches node text.
"exp.txt" << "  " << rightjustifynum(N("lineno",1),3) << "  ";
"exp.txt" << rightjustifynum(N("next anchor",1),3) << "  ";
"exp.txt" << N("text",1) << "\n";
# The line text already includes a newline.
#prlit("exp.txt", "\n")
#noop()

@RULES

_xNIL <- _ANCHOR @@

