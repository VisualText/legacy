###############################################
# FILE: pr_caps.pat
# SUBJ: Pretty print for capitalized phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Nov/99 01:19:51
# MODIFIED:
###############################################

@CODE
#fileout("caps.txt")
prlit("caps.txt", "INFO FOR CAPITALIZED PHRASES\n");
prlit("caps.txt", " (Experience zone only)\n");
prlit("caps.txt", "Formula: Job conf=TOTLEN+CAPLEN+JOBNUM*3+JOBEND*10\n");
prlit("caps.txt", "=======================================================\n");
prlit("caps.txt", " TOT CAP UNK JOB JOB CO  CO  JOB CO   CAP\n");
prlit("caps.txt", " LEN LEN LEN NUM END NUM END CNF CNF  PHRASE\n");
prlit("caps.txt", " ------------------------------------------------------\n");
@@CODE

@PATH _ROOT _experienceZone _LINE

@POST
# For fun, fetch text into a variable.
N("text",1) = N("$text",1);		# Special $var fetches node text.
"caps.txt"
	<< " "
	<< rightjustifynum(N("len",1),3) << " ";
"caps.txt" << rightjustifynum(N("caplen",1),3) << " ";
"caps.txt" << rightjustifynum(N("unknowns",1),3) << " ";
"caps.txt" << rightjustifynum(N("jobtitleroots",1),3) << " ";
"caps.txt" << rightjustifynum(N("end jobtitleroots",1),3) << " ";
"caps.txt" << rightjustifynum(N("companyroots",1),3) << " ";
"caps.txt" << rightjustifynum(N("end companyroots",1),3) << " ";
"caps.txt" << rightjustifynum(N("job conf",1),3) << " ";
"caps.txt" << rightjustifynum(N("company conf",1),3) << "  ";
"caps.txt" << N("text",1) << "\n";
#noop()

@RULES

_xNIL <- _Caps [s] @@
