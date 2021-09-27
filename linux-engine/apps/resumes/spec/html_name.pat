###############################################
# FILE: html_name.pat
# SUBJ: Find name in HTML turds.
# CREATED: 27/Sep/99 13:12:43
###############################################

# 10/19/99 AM. TESTING NEW SELECT METHOD.
@PATH _ROOT _contactZone _LINE
# @NODES _LINE		# 10/19/99 AM.

@CHECK
	#Xge("wcap", 2)	# >=2 capitalized words.
	#Xle("wcap", 6)	# A short title-like thing.
	#Xle("nblobs", 6)	# Consumes the whole line, more or less.
 if (
	X("wcap") >= 2
	&& X("wcap") <= 6
	&& X("nblobs") <= 6
	&& N("hi class",3) == "humanname"
    )
    succeed();
 fail();
@POST
	# Really want an Xrename action to rename the (innermost)
	# context node, ie, the dominating _LINE.
#	group(2,2, _humanNameCandidate)
	++X("humanNameCandidate");	# Increment line's counter.
	noop();  # Explicitly shows that no reduction takes place.
@RULES

_xNIL <-
	\[ [s]
	_xWILD [fail=(_Caps)]
	_Caps [ren=(_humanName)]	# 12/25/99 AM.
	_xWILD 
	\] [s]
	@@

