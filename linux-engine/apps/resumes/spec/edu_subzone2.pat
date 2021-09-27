###############################################
# FILE: edu_subzone2.pat
# SUBJ: Education zone, subzoning algo (part 2).
# AUTH: Amnon Meyers
# CREATED: 03/Nov/99 12:49:25
# MODIFIED:
# NOTE: Look for lines that have redundant information with the
#	  current set.  Mark such lines as education instance starters.
###############################################

# 12/30/99 AM. Moving from global to education zone.
#@CODE
# Define the current set.  Count occurrences of education parts.
#var( "Smajor",  0)
#var( "Sminor",  0)
#var( "Sschool", 0)
#var( "Sdegree", 0)
#var( "Sgrade",  0)
#var( "Sdate",   0)

#var( "last",  0)    # Track last education part seen.
#var( "clash", 0)    # Count clashes of current line.
#var( "adjacent", 0) # Track adjacency clash of current line.

#@@CODE

@PATH _ROOT _educationZone


@POST

X("clash") = 0;		# Initialize.
X("adjacent") = 0;	# Initialize.
N("instance", 1) = 0;	# Line is not a new instance so far.

#############
# Count line's clashes with current set.
#############

if (X("Smajor") && N("Omajor",1))
    ++X("clash");
if (X("Sminor") && N("Ominor",1))
    ++X("clash");
if (X("Sschool") && N("Oschool",1))
    ++X("clash");
if (X("Sdegree") && N("Odegree",1))
    ++X("clash");
if (X("Sgrade") && N("Ograde",1))
    ++X("clash");
if (X("Sdate") && N("Odate",1))
    ++X("clash");

# Check adjacent clash.
if ((X("last") == N("first edupart",1))
    && X("last") != 6)	# 01/02/00 AM. Date always starts instance.
    X("adjacent") = 1;

# Set last to last of current line. (Must follow adjacent check.)
X("last") = N("last edupart",1);


ndump("edu.txt", 1);
xdump("edu.txt",0);
prlit("edu.txt", "--------\n");

# If clash with current set, start new edu instance.
if (X("clash") > X("adjacent"))
    {
    # RESET VARIABLES....
    X("Smajor")  = 0;
    X("Sminor")  = 0;
    X("Sschool") = 0;
    X("Sdegree") = 0;
    X("Sgrade")  = 0;
    X("Sdate")   = 0;

    # LINE STARTS NEW EDU INSTANCE.
    # TODO: LAYER A NODE ONTO THE CURRENT LINE NODE!!
    N("instance", 1) = 1;
    }

#else   # No clash with current edu instance.	# 12/15/99 AM.
# INCREMENT EVEN FOR THE NEW SET!			# 12/15/99 AM.
    {
    # INCREMENT VARIABLES....
    if (N("Omajor", 1))
	++X("Smajor");
    if (N("Ominor", 1))
	++X("Sminor");
    if (N("Oschool", 1))
	++X("Sschool");
    if (N("Odegree", 1))
	++X("Sdegree");
    if (N("Ograde", 1))
	++X("Sgrade");
    if (N("Odate", 1))
	++X("Sdate");
    }
@RULES

_xNIL <- _LINE @@
