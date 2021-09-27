###############################################
# FILE: ex_ctc.pat
# SUBJ: Partial output for contact zone.
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 14:30:19
# MODIFIED:
# NOTE:	Still keeping ex_contact, which does a @MULTI to find
#		miscellaneous turds like emails.  Should have an
#		organized way to get multiple adresses, etc.
###############################################

@CODE
G("indent") = 17;		# 11/22/00 AM.
# fileout("output.txt");
prlit("output.txt", "\n");
prlit("output.txt", "CONTACT:\n\n");
@@CODE

@PATH _ROOT

@POST

if(N("contactName")){
	"output.txt"
		<< LJ("Contact Name:",G("indent"))
		<< N("contactName",1)
		<< "\n";					# 11/22/00 AM.
}

if(N("prefixName")){
	"output.txt"
		<< LJ("Title:",G("indent"))
		<< N("prefixName",1)
		<< "\n";
}

if(N("firstName")){
	"output.txt"
		<< LJ("First Name:",G("indent"))
		<< N("firstName",1)
		<< "\n";
}

if(N("middleName")){
	"output.txt"
		<< LJ("Middle Name:",G("indent"))
		<< N("middleName",1)
		<< "\n";
}

if(N("lastName")){
	"output.txt"
		<< LJ("Last Name:",G("indent"))
		<< N("lastName",1)
		<< "\n";
}

if(N("suffixName")){
	"output.txt"
		<< LJ("Suffix Name:",G("indent"))
		<< N("suffixName",1)
		<< "\n";
}

@RULES
_xNIL <- _contactZone @@

