###############################################
# FILE: pr_caps1.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 22/Dec/99 15:01:10
# MODIFIED:
###############################################

@CODE
fileout("caps.txt");
prlit("caps.txt", "CAPITALIZED PHRASE CONFIDENCES\n");
prlit("caps.txt", "        (RESUME-WIDE)\n");
prlit("caps.txt", "=======================================================\n");
prlit("caps.txt", " HUM CITY FLD SCH JOB CO.  TEXT\n");
prlit("caps.txt", " ------------------------------------------------------\n");
# NAM LOC MAJ SUBORG...

# Count caps printed out.
# But need conditional printout to do this.
#var("prcount",0)
G("prcount") = 0;

@@CODE

@PATH _ROOT _LINE

@POST
# For fun, fetch text into a variable.
N("text",1) = N("$text",1);		# Special $var fetches node text.
"caps.txt" << " ";
"caps.txt" << rightjustifynum(N("humanname conf",1),3) << " ";
"caps.txt" << rightjustifynum(N("city conf",1),3) << "  ";
"caps.txt" << rightjustifynum(N("field conf",1),3) << " ";
"caps.txt" << rightjustifynum(N("school conf",1),3) << " ";
"caps.txt" << rightjustifynum(N("job conf",1),3) << " ";
"caps.txt" << rightjustifynum(N("company conf",1),3) << "  ";
"caps.txt" << N("text",1);
prlit("caps.txt", "\n");
#noop()

@RULES

_xNIL <- _Caps [s] @@

