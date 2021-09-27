###############################################
# FILE: qlines2.pat
# SUBJ: Count non-whitespace sequences ("blobs") on each line.
#	  Count capitalized words also. 09/26/99 AM.
# CREATED: 06/Aug/99 15:08:31
# WARN: 09/15/99 AM. NO MULTI-TOKEN PATTERNS SHOULD APPEAR BEFORE THIS
#       PASS. OR THE COUNTS WILL BE INCORRECT!!
###############################################

@NODES _LINE

@POST
	# Made $length cover multiple nodes.	# 06/05/00 AM.
	#xaddlen("nindent", 2);
	X("nindent") = X("nindent") + N("$length",2);	# 06/04/00 AM.
	singler(2,2);		# 10/09/99 AM.
@RULES

# Count indentation separately.  Doesn't add to nonwhite blob count.
_whtINDENT [base] <- _xSTART _xWHITE [s plus]@@

# Recording long blobs of whitespace now.  # 10/09/99 AM.
@POST
	#xinc("nblobs")
	++X("nblobs");		# 06/04/00 AM.
	single();			# 10/09/99 AM.
@RULES

# Note: Blobs = nonwhite regions of text in a line.
# Note: counting end of line to get the right blob count.
_whtSEP [base] <- _xWHITE [s min=5 max=0] @@

# Because of variable spacing in text regions, allowing up to 3
# whitespace to be a normal word separation. # 10/09/99 AM.
@POST
	# xinc("nblobs")
	++X("nblobs");	# 06/04/00 AM.
@RULES

_xNIL <- _xWHITE [s min=1 max=3] @@

@PRE
<1,1> uppercase()
@POST
	++X("wallcaps");		# For Dave. # 11/30/99 AM.
	++X("wcap");		# So nothing will change. # 11/30/99 AM.
@RULES
_xNIL <- _xALPHA [s] @@

@POST
	# xinc("wcap")		# Num of capitalized words.
	++X("wcap");		# 06/04/00 AM.
@RULES
_xNIL <- _xCAP [s] @@

