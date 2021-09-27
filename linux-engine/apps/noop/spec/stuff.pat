###############################################
# FILE: stuff.pat
# SUBJ: comment
# AUTH: AM
# CREATED: 27/Oct/06 17:30:34
# MODIFIED:
###############################################

@CODE
L("hello") = 0;
"output.txt" << "Printing from code region." << "\n";

addword("abc");
L("con") = dictgetword("abc");
"output.txt" << "Word con=" << conceptname(L("con")) << "\n";
@@CODE

@NODES _ROOT

@POST
  "output.txt" << "Found Linux" << "\n";
  single();
@RULES
_blah <-
	Linux
	@@
