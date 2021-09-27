###############################################
# FILE: xml_Education.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 27/Dec/99 17:11:53
# MODIFIED:
###############################################

@PATH _ROOT _educationZone
#@MULTI _educationInstance
@POST

prlit("output.xml","\n<Education>\n<School>");
prtree("output.xml",1,"_CompleteSchoolName") ;
#fprintnvar("output.xml","school",1);
prlit("output.xml","</School>\n");

# DOING STRING CATENATION!!
if (!N("school location"))
  {
  if (N("city") && N("state"))
    N("school location") = N("city") + ", " + N("state");
  else if (N("city"))
    N("school location") = N("city");
  else if (N("state"))
    N("school location") = N("state");
  }
prlit("output.xml","<Location>");
prtree("output.xml",1,"_SchoolLocation");
#fprintnvar("output.xml","school location",1);
prlit("output.xml","</Location>\n");

prlit("output.xml","<Degree>");
prtree("output.xml",1,"_degreeInMajor");
#fprintnvar("output.xml","degree",1);
prlit("output.xml","</Degree>\n");

prlit("output.xml","<Major>");
prtree("output.xml",1,"_RealMajor");
#fprintnvar("output.xml","major",1);
prlit("output.xml","</Major>\n");

prlit("output.xml","<Minor>");
prtree("output.xml",1,"_minor");
#fprintnvar("output.xml","minor",1);
prlit("output.xml","</Minor>\n");

prlit("output.xml","<GPA>");
prtree("output.xml",1,"_Grade");
#fprintnvar("output.xml","grade",1);
prlit("output.xml","</GPA>\n");

prlit("output.xml","<Date>\n<StartDate>");
prtree("output.xml",1,"_fromDate");
#fprintnvar("output.xml","grade",1);
prlit("output.xml","</StartDate>\n<EndDate>");
prtree("output.xml",1,"_toDate");
prlit("output.xml","</EndDate>\n</Date>");

prlit("output.xml","\n</Education>");
@RULES
_xNIL <- _educationInstance @@