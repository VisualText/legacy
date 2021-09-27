###############################################
# FILE: pr_lines.pat
# SUBJ: Print semantics for lines.
# CREATED: 05/Aug/99 16:20:27
###############################################

@CODE
fileout("dump.txt");
prlit("dump.txt","\n");
prlit("dump.txt","ALP NUM PUN WHT BLOBS INDENT WALP WCAP WALL\n");
prlit("dump.txt","-------------------------------------------\n");
@@CODE

@NODES _ROOT

# Print out the total count of vars in each line.
@POST
	"dump.txt" << rightjustifynum(N("nalpha",1), 3) << " ";
	"dump.txt" << rightjustifynum(N("nnum",1),   3) << " ";
	"dump.txt" << rightjustifynum(N("npunct",1), 3) << " ";
	"dump.txt" << rightjustifynum(N("nwhite",1), 3) << "   ";
	"dump.txt" << rightjustifynum(N("nblobs",1), 3) << "    ";
	"dump.txt" << rightjustifynum(N("nindent",1),3) << "  ";
	"dump.txt" << rightjustifynum(N("walpha",1), 3) << "  ";
	"dump.txt" << rightjustifynum(N("wcap",1),   3) << "  ";
	"dump.txt" << rightjustifynum(N("wallcaps",1),3) << "\n";
	# noop();
@RULES
_xNIL <- _LINE @@

@POST
	prlit("dump.txt", "blank line\n");
@RULES
_xNIL <- _BLANKLINE @@
