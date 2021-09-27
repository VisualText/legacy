###############################################
# FILE: edu_subzone1.pat
# SUBJ: Education zone, subzoning algorithm.
# AUTH: Amnon Meyers
# CREATED: 31/Oct/99 09:26:40
# MODIFIED:
# NOTE: Rotary algorithm per each line in education zone.
###############################################

@CODE
fileout( "edu.txt" );
@@CODE

# Traverse a line, looking for education parts.
# Keep an ordering counter for each line.
# NOTE: Because the edu parts may be scattered, the ordering may
# be approximate, but that's good enough for now.
# NOTE: If an edupart is already assigned, it's value gets
# overwritten.  Could accumulate redundancy counters also, or
# could store multiple order values per variable.
# At least could flag some nonadjacent redundancy as a possible
# in-line segmentation point.  (later.....)
# 11/02/99 AM. Switching from [tree] to [s] so that the education
# parts will be found in a more principled fashion. (Sometimes
# they are nested in each other).

# Implementing notion of FIRST part and LAST part on a line.
# Using ENUM VALUES as follows:
# 0-none, 1-major,2-minor,3-school,4-degree,5-grade,6-date.

@PATH _ROOT _educationZone _LINE

@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 2;
	X("last edupart") = 2;
	++X("eduparts");
	X("Ominor") = X("eduparts");
	# XXsetifzero( "first edupart", 2, "eduparts")
	#Xset( "last edupart", 2)
	#Xinc( "eduparts" )
	#XsetX( "Ominor", "eduparts" )
#	noop()
@RULES
_xNIL <- _minor [s] @@

@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 1;
	X("last edupart") = 1;
	++X("eduparts");
	X("Omajor") = X("eduparts");
	# XXsetifzero( "first edupart", 1, "eduparts")
	# Xset( "last edupart", 1)		# Last one seen is major.
	# Xinc( "eduparts" )
	# XsetX( "Omajor", "eduparts" ) # line(var1) = line(var2)
#	noop()	# document no reduction
@RULES
_xNIL <- _major [s] @@

@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 3;
	X("last edupart") = 3;
	++X("eduparts");
	X("Oschool") = X("eduparts");
	#XXsetifzero( "first edupart", 3, "eduparts")
	#Xset( "last edupart", 3)
	#Xinc( "eduparts" )
	#XsetX ( "Oschool", "eduparts" )
#	noop()
@RULES
_xNIL <- _CompleteSchoolName [s] @@
_xNIL <- _school [s] @@				# 12/15/99 AM.


@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 4;
	X("last edupart") = 4;
	++X("eduparts");
	X("Odegree") = X("eduparts");
	#XXsetifzero( "first edupart", 4, "eduparts")
	#Xset( "last edupart", 4)
	#Xinc( "eduparts" )
	#XsetX ( "Odegree", "eduparts" )
#	noop()
@RULES
_xNIL <- _degree [s] @@

# 12/15/99 AM. Handling this also.
@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 4;		# First = DEGREE!
	X("last edupart") = 1;			# Last = MAJOR!
	++X("eduparts");
	X("Odegree") = X("eduparts");
	X("Omajor")  = X("eduparts");		# Record this also.
	#XXsetifzero( "first edupart", 4, "eduparts")
	#Xset( "last edupart", 4)
	#Xinc( "eduparts" )
	#XsetX ( "Odegree", "eduparts" )
#	noop()
@RULES
_xNIL <- _degreeInMajor [s] @@



@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 5;
	X("last edupart") = 5;
	++X("eduparts");
	X("Ograde") = X("eduparts");
	#XXsetifzero( "first edupart", 5, "eduparts")
	#Xset( "last edupart", 5)
	#Xinc( "eduparts" )
	#XsetX( "Ograde", "eduparts" )
#	noop()
@RULES
_xNIL <- _Grade [s] @@

@POST
	if (X("eduparts") == 0)
	    X("first edupart") = 6;
	X("last edupart") = 6;
	++X("eduparts");
	X("Odate") = X("eduparts");
	#XXsetifzero( "first edupart", 6, "eduparts")
	#Xset( "last edupart", 6)
	#Xinc( "eduparts" )
	#XsetX( "Odate", "eduparts" )
#	noop()
@RULES
_xNIL <- _xWILD [s one match=( _DateRange _SingleDate )] @@

