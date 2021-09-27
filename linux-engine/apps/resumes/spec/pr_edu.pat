###############################################
# FILE: pr_edu.pat
# SUBJ: Verbose printouts for education zone.
# AUTH: Amnon Meyers
# CREATED: 02/Nov/99 12:00:50
# MODIFIED:
###############################################

@CODE

prlit( "edu.txt", "KEY= 0-none,1-major,2-minor,3-school,\n" );
prlit( "edu.txt", "     4-degree,5-grade,6-date\n\n");
prlit( "edu.txt", "LINE DATA IN EDUCATION ZONE\n" );
prlit( "edu.txt", "---------------------------\n" );
prlit( "edu.txt", " NEW TOT FIRST  LAST  MAJ MIN SCH DEG GPA DAT\n" );
prlit( "edu.txt", "     num  key   key   ord ord ord ord ord ord\n" );
prlit( "edu.txt", "---------------------------------------------\n" );

@@CODE

@PATH _ROOT _educationZone

# Print out relevant vars for each line that has parts.
@CHECK
	#Ngt(1, "eduparts", 0)	# More than zero education parts.
	if (N("eduparts",1) <= 0) fail();
@POST
	"edu.txt" << " "
		<< rightjustifynum(N("instance",1),3) << " ";
	"edu.txt" << rightjustifynum(N("eduparts",1),3) << " ";
	"edu.txt" << rightjustifynum(N("first edupart",1),5) << "  ";
	"edu.txt" << rightjustifynum(N("last edupart",1),4) << "  ";
	"edu.txt" << rightjustifynum(N("Omajor",1), 3) << " ";
	"edu.txt" << rightjustifynum(N("Ominor",1), 3) << " ";
	"edu.txt" << rightjustifynum(N("Oschool",1),3) << " ";
	"edu.txt" << rightjustifynum(N("Odegree",1),3) << " ";
	"edu.txt" << rightjustifynum(N("Ograde",1), 3) << " ";
	"edu.txt" << rightjustifynum(N("Odate",1),  3) << "\n";
	#noop();
@RULES

_xNIL <- _LINE @@


# Make note of lines that have no eduparts.
@CHECK
	# Neq(1, "eduparts", 0)
	if (!N("eduparts",1)) fail();
@POST
	prlit( "edu.txt", "  -    -     -\n");
@RULES
_xNIL <- _LINE @@


@POST
	prlit( "edu.txt", " blank line\n");
@RULES

_xNIL <- _BLANKLINE @@

