###############################################
# FILE: ex_edu.pat
# SUBJ: Education zone output, new version.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 13:08:21
# MODIFIED:
# NOTE:	Exploits general capitalized phrase handling.
#		Uses the simple subzoning algorithm by repeating parts.
###############################################

@CODE
prlit("output.txt","\n");
prlit("output.txt","EDUCATION:\n\n");
@@CODE

@PATH _ROOT _educationZone

# Not sure what to require yet.  # 12/15/99 AM.
# @CHECK
# Require the instance to have a daterange.
# N("date range",1);
@POST

if (N("date")) 
{
"output.txt"
	<< LJ("Date:",G("indent"))
	<< N("date",1)
	<< "\n";
}

if (N("school")) 
{
"output.txt"
	<< LJ("School Name:",G("indent"))
	<< N("school",1)
	<< "\n";
}

# DOING STRING CATENATION!!
if (!N("school location"))
  {
  if (N("city") && N("state"))
    N("school location") = N("city") + ", " + N("state");
  else if (N("city") && N("country"))
    N("school location") = N("city") + ", " + N("country");
  else if (N("city"))
    N("school location") = N("city");
  else if (N("state"))
    N("school location") = N("state");
  else if (N("country"))
    N("school location") = N("country");
  }

if (N("school location")) 
{
"output.txt"
	<< LJ("School Location:",G("indent"))
	<< N("school location",1)
	<< "\n";
}

if (N("degree")) 
{
"output.txt"
	<< LJ("Degree:",G("indent"))
	<< N("degree",1)
	<< "\n";
}

if (N("major")) 
{
"output.txt"
	<< LJ("Major:",G("indent"))
	<< N("major",1)
	<< "\n";
}

if (N("minor")) 
{
"output.txt"
	<< LJ("Minor:",G("indent"))
	<< N("minor",1)
	<< "\n";
}

if (N("grade")) 
{
"output.txt"
	<< LJ("GPA:",G("indent"))
	<< N("grade",1)
	<< "\n";
}

if (N("major grade"))
   "output.txt" << "Major GPA: " << N("major grade") << "\n";
if (N("minor grade"))
   "output.txt" << "Minor GPA: " << N("minor grade") << "\n";
if (N("max grade"))
   "output.txt" << "Max GPA: " << N("max grade") << "\n";

prlit("output.txt","\n");

@RULES
_xNIL <- _educationInstance @@
