################################################################################
# FILE: ex_experience.pat
# SUBJ: Output for experience zone of resume.
# NOTE: 11/27/99 AM. Overhaul to use NLP++ semantics and
#	experience subzones.
################################################################################

## CODE REGION
@CODE
prlit("output.txt","\n");
prlit("output.txt","EXPERIENCE:\n");
@@CODE

@PATH _ROOT _experienceZone

@CHECK
# Require the instance to have a daterange.
if (!N("date range",1)) fail();
@POST

if(N("date range")){
"output.txt"
	<< LJ("Date:",G("indent"))
	<< N("date range",1)
	<< "\n";
}

if(N("company name")){
"output.txt"
	<< LJ("Company:",G("indent"))
	<< N("company name",1)
	<< "\n";
}

if(N("job title")){
"output.txt"
	<< LJ("Position:",G("indent"))
	<< N("job title",1)
	<< "\n";
}

if (N("city"))
   {
   if (N("state"))
	N("loc") = N("city") + ", " + N("state");
   else if (N("country"))
	N("loc") = N("city") + ", " + N("country");
   else
	N("loc") = N("city");
   }
else if (N("state"))
   N("loc") = N("state");
else if (N("country"))
   N("loc") = N("country");

if (N("loc")){
"output.txt"
	<< LJ("Location:",G("indent"))
	<< N("loc",1)
	<< "\n";
}
"output.txt" << "\n";	# 11/22/00 AM.

@RULES
_xNIL <- _experienceInstance @@