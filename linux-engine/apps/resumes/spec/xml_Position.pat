###############################################
# FILE: xml_Position.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 27/Dec/99 17:15:21
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone

@CHECK
# Require the instance to have a daterange.
if (!N("date range",1)) fail();
@POST
prlit("output.xml","<Position>\n");
#prlit("output.txt","Date: ");
#fprintnvar("output.txt","date range",1);
#prlit("output.txt","\n");

prlit("output.xml","\n<EmployerName>");
#fprintnvar("output.xml","_company",1);
prtree("output.xml",1,"_EmployerName");
prlit("output.xml","</EmployerName>\n");

prlit("output.xml","\n<JobTitle>");
#fprintnvar("output.xml","job title",1);
prtree("output.xml",1,"_jobTitle");
prlit("output.xml","</JobTitle>\n");

if (N("city"))
   {
   if (N("state"))
	N("loc") = N("city") + ", " + N("state");
   else if (N("country"))
	N("loc") = N("city") + ", " + N("country");
   else
	N("loc") = N("city");
   }
else if (N("country"))
   N("loc") = N("country");

prlit("output.xml", "\n<Location>");
prtree("output.xml",1,"_cityState");
prlit("output.xml","</Location>\n");

prlit("output.xml","<Date>\n<StartDate>");
prtree("output.xml",1,"_fromDate");
prlit("output.xml","</StartDate>\n<EndDate>");
prtree("output.xml",1,"_toDate");
prlit("output.xml","</EndDate>\n</Date>");
prlit("output.xml","\n</Position>\n");
@RULES
_xNIL <- _experienceInstance @@