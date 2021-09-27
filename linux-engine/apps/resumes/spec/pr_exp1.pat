###############################################
# FILE: pr_exp1.pat
# SUBJ: comment here
# AUTH: AM
# CREATED: 25/Nov/99 10:25:27
# MODIFIED:
###############################################

@CODE
# fileout("exp.txt");
prlit("exp.txt", "\n");
prlit("exp.txt", "TOTAL CAPS CONFIDENCE FOR EXPERIENCE ZONE\n");
prlit("exp.txt", "=======================================================\n");
prlit("exp.txt", " ANCH CURR PROX JOB  JOB   CO   CO  JOB  CO CAP\n");
prlit("exp.txt", " LINE LINE CONF CONF TCNF CONF TCNF HI   HI PHR\n");
prlit("exp.txt", " ------------------------------------------------------\n");
@@CODE

@PATH _ROOT _experienceZone _experienceInstance _LINE

@POST
# For fun, fetch text into a variable.
N("text",1) = N("$text",1);		# Special $var fetches node text.
"exp.txt" << " " << rightjustifynum(X("anchor lineno",3),4) << " ";
"exp.txt" << rightjustifynum(X("lineno",0),4) << " ";
"exp.txt" << rightjustifynum(N("prox conf",1),4) << " ";
"exp.txt" << rightjustifynum(N("job conf",1),4) << " ";
"exp.txt" << rightjustifynum(N("job conf tot",1),4) << " ";
"exp.txt" << rightjustifynum(N("company conf",1),4) << " ";
"exp.txt" << rightjustifynum(N("company conf tot",1),4) << " ";
"exp.txt" << rightjustifynum(X("job conf hi",3),3) << " ";
"exp.txt" << rightjustifynum(X("company conf hi",3),3) << " ";
"exp.txt" << N("text",1);
prlit("exp.txt", "\n");
#noop()

@RULES

_xNIL <- _Caps @@


