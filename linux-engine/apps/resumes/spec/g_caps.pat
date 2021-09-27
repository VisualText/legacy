###############################################
# FILE: g_caps.pat
# SUBJ: GLOBAL CAPITALIZED PHRASE BUILDER.  PURE CAPS.
# AUTH: Amnon Meyers
# CREATED: 07/Dec/99 00:03:37
# MODIFIED:
# NOTE:	PURE CAPS.  That is CAP CAP CAP and little else.
#		Subsequent passes will glom other things that are blocked
#		by the current pass.
###############################################

@CODE
fileout("zdump.txt");
@@CODE

@NODES _LINE

################
# BLOCK GLOMMING  (gulab jamun anyone?)
################
# 12/15/99 AM. Need a general way to BLOCK cap phrase formation
# for things like "roots" or other items that are COMPLETE or
# otherwise would rather STAND ALONE!
# May want some kind of feature like "noglom" or "complete".
# NOTE: PUT NEW ITEMS INTO BOTH RULES BELOW.

# I'd rather not have many such blocks.  We need info as to whether
# things are nicely separated with commas, etc. to decide whether
# to block or not.

# 01/07/00 AM. The proper thing to do is to set [base] for any item
# that we don't want to participate in the cap phrase glomming.  This
# way, the underlying _xCAP won't be seen and we can remove all the
# special treatment below.
@POST
  noop();
@RULES
_xNIL <- _xWILD [s one match=(
	_posPREP _posDET _posCONJ
	_resumeOf _degreeInMajor
	)] @@

# 12/30/99 AM. Let a single-cap phrase form, but mark it as
# blocked for glomming to the left and right.
@POST
	S("noglom") = 1;			# Don't let it glom yet.
	S("len") = 1;			# One cap in list.
	single();
@RULES
_Caps [base unsealed] <- _xWILD [s one match=(
	_degreePhrase 
	_header _headerWord
	_minorKey _state
	)] @@

# 01/07/00 AM. Need to block the left-side glomming again.
@POST
  noop();	# This "fails" so that recursive pass won't infinite loop.
@RULES
_xNIL <- _Caps _xWHITE [s star] _xWILD [s one match=(
	_degreePhrase _degreeInMajor
	_header _headerWord
	_minorKey _state
	)] @@

# Need a copy-up semantic action.
@POST
  if (N("degree"))
	S("degree") = N("degree");
  else
	S("degree") = N("$text");	# for now.
  if (N("major"))
	S("major") = N("major");
  else
	S("major") = N("$text");
   S("noglom") = 1;			# Don't let it glom yet.
   S("len") = 1;			# One cap in list.
   single();
@RULES
_xNIL [base unsealed] <- _degreeInMajor [s] @@

####################
# BUILD CAPS PHRASES
####################

############
# SOME SPECIAL CASES.
############

# Single-letter alpha followed by period.
# May want "A." and so on handled separately and much earlier
# in analyzer.
@PRE
<1,1>	length(1)
@POST
	S("len") = 1;			# One cap in list.
	single();
@RULES
_Caps [base unsealed] <- _xCAP [s] \. [s] @@

@PRE
<3,3> length(1)
@CHECK
  if (N("noglom",1)) fail();
@POST
	++N("len",1);
	listadd(1,4, "true");	# 4 is not really the "item"!
@RULES
_xNIL <- _Caps _xWHITE [s star] _xCAP [s] \. @@

##############
# NORMAL CAP PHRASE STARTUP.
##############
@POST
	S("len") = 1;			# One cap in list.
	single();
@RULES
# With [s], BASE is needed to prevent infinite loop in REC pass!
# Making this unsealed so we can gather data within _Caps later.
# (May not be needed.)
_Caps [base unsealed] <- _xCAP [s] @@
   

### NORMAL EXTENSION OF CAP PHRASE.
@CHECK
  if (N("noglom",1)) fail();
@POST
	++N("len",1);	# Increment number of caps.
	listadd(1,3);	# Discard the matched whitespace.
				# Glom last cap into list, without nesting.
@RULES
_xNIL <- _Caps _xWHITE [s star] _xCAP [s] @@

# Some reverse building may be needed.
@CHECK
  if (N("noglom",3)) fail();
@POST
	++N("len",3);
	listadd(3,1);
@RULES
_xNIL <- _xCAP [s] _xWHITE [s star] _Caps @@

# Some merging may be needed.
@CHECK
 if (
  !N("noglom",1) && !N("noglom",3)
    )
    succeed();
 fail();
@POST
	S("len") = N("len",1) + N("len",3);
	merge();
@RULES
_Caps [unsealed] <- _Caps _xWHITE [s star] _Caps @@

##############
# SOME NONCAPS
##############
# Some more specialized stuff.	# 12/15/99 AM.
# May want to do these later on instead.  We'll see.
# Allowing noglom caps to succeed here.
@POST
  ++N("len",1);
  listadd(1,5,"true");	# Keep the intervening stuff.
# noop()
@RULES
_xNIL <-
	_Caps
	_xWHITE [s star]
	\& [s]
	_xWHITE [s star]
	_xCAP [s] @@
