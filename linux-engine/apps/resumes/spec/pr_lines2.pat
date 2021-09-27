###############################################
# FILE: pr_lines2.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 13/Dec/99 21:51:34
# MODIFIED:
###############################################

@CODE
fileout("dumpy.txt");	# Must declare file.
prlit("dumpy.txt", "Globals:\n");
gdump("dumpy.txt");
prlit("dumpy.txt", "\n");
prlit("dumpy.txt", "DUMPING LINES\n");
prlit("dumpy.txt", "-------------\n");
prlit("dumpy.txt", "\n");
@@CODE

@NODES _ROOT

@POST
	ndump("dumpy.txt",1);
	prlit("dumpy.txt", "Globals:\n");
	gdump("dumpy.txt");
	prlit("dumpy.txt", "Root context:\n");
	xdump("dumpy.txt", 1);
	prlit("dumpy.txt", "Suggested node variables:\n");
	sdump("dumpy.txt");
	prlit("dumpy.txt", "===============\n");
@RULES

_xNIL <- _LINE @@

