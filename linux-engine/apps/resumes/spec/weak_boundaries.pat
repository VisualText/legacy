###############################################
# FILE: weak_boundaries.pat
# SUBJ: Weaker methods for finding headers.
# CREATED: 26/Sep/99 08:07:05
###############################################

# @NODES _ROOT
@PATH _ROOT

# 11/01/99 AM. Skip short line clusters at resume start.
@CHECK
 if (
	#Nlt(3, "nblobs", 6)
	#Nlt(5, "nblobs", 6)
	(N("nblobs",3) < 6) && (N("nblobs",5) < 6)
    )
    succeed();
 fail();
@POST
	noop();
@RULES
_xNIL <- _xSTART
	_xWILD [s star match=( _BLANKLINE _horizRule)]
	_xANY
	_xWILD [s star match=( _BLANKLINE _horizRule)]
	_xANY
	@@

@POST
	noop();
@RULES
# 10/04/99 AM. Skip early parts of resume.
_xNIL <- _xSTART
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_xANY
	@@

# 01/04/00 AM. Skip HTML turds.  ie, line with [....]
# Skip resume of constructs, and any lines with unknown words.
@CHECK
 if (
  N("html turd", 2) || N("resumeOf", 2)
  || N("nunknowns", 2)
    )
    succeed();
 fail();
@POST
  noop();
@RULES
_xNIL <-
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_xANY
	@@

# Skip known resume headers.	# 01/04/00
@CHECK
  if (!N("ResumeByItselfLine", 2)) fail();
@POST
  noop();
@RULES
_xNIL <-
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_xANY		# E.g, resume of
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_xANY		# E.g., John Q. Smith
	@@

# Basically moved this from previous pass. 10/07/99 AM.
# Line based on having blank line before and after.
#@CHECK
#	Nlt(2, "nblobs", 5)
#	Neq(2, "addressParts", 0)
#	Nlt(2, "walpha", 5)
#	Neq(2, "wnum", 0)
#@RULES
#_otherBoundary <-
#	_xWILD [s plus match=(_BLANKLINE _horizRule)]	# >=1 above.
#	_xWILD [s one fails=(_horizRule _BLANKLINE) trig]
#	_xWILD [s plus match=(_BLANKLINE _horizRule)]	# >=1 below.
#	@@

# this section removed 01.28.2000 by PS for
# incorrect zoning on felbab, e.g. education
# where it inserted 'other bounday' on a blank line
# Should have all alphas capitalized.
#@CHECK
#	Neq(2, "addressParts", 0)
#	Nlt(2, "walpha", 5)	# Header.  Little text.
#	Neq(2, "wnum", 0)		# No numbers on this line.
#	Ngt(4, "walpha", 6)	# First line of section. Lots of text.
#@POST
#	singler(1,3)		# All but first line of section.
#@RULES
#_otherBoundary <-
#	_xWILD [s plus match=(_BLANKLINE _horizRule)]	# One thing above.
#	_LINE [s]			# Candidate header line.
#	_xWILD [s star match=(_BLANKLINE _horizRule)]
#	_LINE [s]			# Some alphabetic line.
#	@@

